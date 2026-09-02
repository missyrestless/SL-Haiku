/////////// Second Life Haiku Generator \\\\\\\\\\\\
//                                                //
//   Generates a haiku when object is touched     //
////////////////////////////////////////////////////
//
////////////////////////////////////////////////////
// Copyright (c) 2026 Truth & Beauty Lab          //
// License: GPLv3                                 //
// All rights reserved.                           //
//                                                //
// Author: Missy Restless missyrestless@gmail.com //
////////////////////////////////////////////////////
//
// Created 23-Feb-2012
//
// Modification History
// --------------------
// - 31-Aug-2026 Rewrite, perform generation in LSL rather than as a PHP web service

string VERSION = "1.0.3";

list nouns = [
    "abuse report", "4",
    "maturity rating", "6",
    "age verification", "6",
    "Destination Guide", "5",
    "Knowledge Base", "3",
    "Terms of Service", "4",
    "display name", "3",
    "draw distance", "3",
    "inventory", "4",
    "event", "2",
    "texture", "2",
    "mesh", "1",
    "pie menu", "3",
    "particle", "3",
    "notecard", "2",
    "facelight", "2",
    "viewer", "2",
    "alpha", "2",
    "silks", "1",
    "skybox", "2",
    "RL", "2",
    "SL", "2",
    "sandbox", "2",
    "lag", "1",
    "skin", "1",
    "shape", "1",
    "hovertext", "3",
    "HUD", "1",
    "bling", "1",
    "neko", "2",
    "AO", "2",
    "attachment", "3",
    "pixel", "2",
    "pixels", "2",
    "freebie", "2",
    "SL Marketplace", "5",
    "tier", "1",
    "landmark", "2",
    "SL blogger", "4",
    "gesture", "2",
    "DJ", "2",
    "host", "1",
    "hostess", "2",
    "chat bot", "2",
    "Tiny", "2",
    "invisiprim", "4",
    "Furry", "2",
    "Vampire", "2",
    "mouselook", "2",
    "Gor", "1",
    "money tree", "3",
    "virtual world", "4",
    "alt", "1",
    "griefer", "2",
    "flying car", "3",
    "camping chair", "3",
    "sculpted prim", "3",
    "flexi prim", "3",
    "flexi hair", "3",
    "prim", "1",
    "welcome center", "4",
    "orient island", "5",
    "Linden Lab", "3",
    "Linden", "2",
    "inner core", "3",
    "pose ball", "2",
    "avatar", "3",
    "avatars", "3",
    "sim", "1",
    "script", "1",
    "hardware lighting", "4",
    "Resident", "3",
    "Linden dollar", "4",
    "Mainland", "2",
    "Private Island", "4",
    "Homestead", "2",
    "grid", "1",
    "profile", "2",
    "region", "2",
    "parcel", "2",
    "CopyBot", "3",
    "Firestorm", "2",
    "Windlight", "2",
    "Zindra", "2"
];

list verbs = [
    "add", "1",
    "fly", "1",
    "relog", "2",
    "reset", "2",
    "block", "1",
    "build", "1",
    "deed", "1",
    "terraform", "3",
    "attach", "2",
    "detach", "2",
    "delete", "2",
    "TP", "2",
    "teleport", "3",
    "stream", "1",
    "partner", "2",
    "IM", "2",
    "age verify", "4",
    "emote", "2",
    "accessorize", "4",
    "rez", "1",
    "building", "2",
    "scripting", "2",
    "editing", "3",
    "chatting", "2",
    "lagging", "2",
    "flying", "2",
    "building together", "5",
    "cybering", "3",
    "teleporting", "4",
    "pose balling", "3",
    "editing appearance", "6",
    "exploring", "3",
    "gesturbating", "4",
    "griefing", "2",
    "rebaking", "2",
    "uploading", "2",
    "editing profile", "5",
    "creating outfits", "5"
];

list adv = [
    "inworld", "2",
    "earlier", "3",
    "everywhere", "3",
    "frequently", "3",
    "in the Metaverse", "5",
    "slowly", "2",
    "graphicly", "3",
    "dazzlingly", "3",
    "dreamily", "3",
    "well", "1",
    "once", "1",
    "less", "1",
    "twice", "1",
    "in the air", "3",
    "quickly", "2",
    "very quickly", "4",
    "with great speed", "3",
    "virtually", "4",
    "vivaciously", "4",
    "visually", "4",
    "", "0"
];

list adj = [
    "anonymous", "4",
    "adorable", "4",
    "adventurous", "4",
    "full perm", "2",
    "afk", "3",
    "dancing", "2",
    "gorean", "3",
    "virtuous", "3",
    "ecstatic", "3",
    "fabulous", "3",
    "so gorgeous", "3",
    "sexy cool", "3",
    "lonely", "2",
    "cool", "1",
    "baked", "1",
    "brave", "1",
    "nude", "1",
    "worn", "1",
    "electric", "3",
    "stunning", "2",
    "creepy", "2",
    "dashing", "2",
    "glowing", "2",
    "beautiful", "3",
    "colorful", "3",
    "", "0"
];

list one = [
    "how",
    "once",
    "quite",
    "so"
];

list two = [
    "aptly",
    "always",
    "boldly",
    "fiercely",
    "they are",
    "it is"
];

list three = [
    "vibrantly",
    "totally",
    "serenely",
    "seemingly",
    "it is so"
];

list four = [
    "absolutely",
    "virtually",
    "incredibly"
];

list five = ["Second Life Haiku!"];

integer noun_size;
integer verb_size;
integer adj_size;
integer adv_size;
integer one_size;
integer two_size;
integer three_size;
integer four_size;
integer five_size;

string makehaiku1() {
    integer running = TRUE;
    string haiku1 = "";

    while (running) {
        integer x = (integer)llFrand((float)noun_size);
        if (x % 2 == 1) {
            x--;
        }
        integer y = (integer)llFrand((float)adj_size);
        if (y % 2 == 1) {
            y--;
        }
        integer nind = (integer)llList2String(nouns, x + 1);
        integer yind = (integer)llList2String(adj, y + 1);
        if ((nind + yind) == 5) {
            haiku1 = llList2String(adj, y) + " " + llList2String(nouns, x);
            running = FALSE;
        } else if ((1 + nind + yind) == 5) {
            haiku1 = "The " + llList2String(adj, y) + " " + llList2String(nouns, x);
            running = FALSE;
        }
    }
    haiku1 = haiku1 + "\n";
    return haiku1;
}

string makehaiku2() {
    integer running = TRUE;
    string haiku2 = "";

    while (running) {
        integer a = (integer)llFrand((float)verb_size);
        if (a % 2 == 1) {
            a--;
        }
        integer z = (integer)llFrand((float)adv_size);
        if (z % 2 == 1) {
            z--;
        }
        integer aind = (integer)llList2String(verbs, a + 1);
        integer zind = (integer)llList2String(adv, z + 1);
        if ((aind + zind) == 7) {
            haiku2 = llList2String(verbs, a) + " " + llList2String(adv, z);
            running = FALSE;
        }
    }
    haiku2 = haiku2 + "\n";
    return haiku2;
}

string makehaiku3() {
    integer x;
    string tmpstr;
    string haiku3 = "";

    integer y = (integer)llFrand((float)adj_size);
    if (y % 2 == 1) {
        y--;
    }
    integer yind = (integer)llList2String(adj, y + 1);
    if (yind == 0) {
        x = (integer)llFrand((float)five_size);
        tmpstr = llList2String(five, x);
    } else if (yind == 1) {
        x = (integer)llFrand((float)four_size);
        tmpstr = llList2String(four, x);
    } else if (yind == 2) {
        x = (integer)llFrand((float)three_size);
        tmpstr = llList2String(three, x);
    } else if (yind == 3) {
        x = (integer)llFrand((float)two_size);
        tmpstr = llList2String(two, x);
    } else if (yind == 4) {
        x = (integer)llFrand((float)one_size);
        tmpstr = llList2String(one, x);
    }
    haiku3 = tmpstr + " " + llList2String(adj, y) + "\n";
    return haiku3;
}

default
{
    state_entry() {
        string PROFILE = "secondlife:///app/agent/3506213c-29c8-4aa1-a38f-e12f6d41b804/about";

        noun_size = llGetListLength(nouns);
        verb_size = llGetListLength(verbs);
        adj_size = llGetListLength(adj);
        adv_size = llGetListLength(adv);
        one_size = llGetListLength(one);
        two_size = llGetListLength(two);
        three_size = llGetListLength(three);
        four_size = llGetListLength(four);
        five_size = llGetListLength(five);

        llSay(0, "\nSecond Life Haiku Generator version " + VERSION + "\nCreated by " + PROFILE);
        llSay(0, "\nThe Second Life Haiku master is ready...");
    }

    touch_start(integer total_number) {
        string haiku = "A Second Life Haiku:\n\n" + makehaiku1() + makehaiku2() + makehaiku3();
        llSay(0, haiku);
    }

    on_rez(integer stp) {
        llResetScript();
    }
}
