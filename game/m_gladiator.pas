//100%
{----------------------------------------------------------------------------}
{                                                                            }
{ File(s): m_gladiator.h                                                     }
{                                                                            }
{ Initial conversion by : Ben Watt (ben@delphigamedev.com)                   }
{ Initial conversion on : 07 March-2002                                      }
{                                                                            }
{ This File contains part of convertion of Quake2 source to ObjectPascal.    }
{ More information about this project can be found at:                       }
{ http://www.sulaco.co.za/quake2/                                            }
{                                                                            }
{ Copyright (C) 1997-2001 Id Software, Inc.                                  }
{                                                                            }
{ This program is free software; you can redistribute it and/or              }
{ modify it under the terms of the GNU General Public License                }
{ as published by the Free Software Foundation; either version 2             }
{ of the License, or (at your option) any later version.                     }
{                                                                            }
{ This program is distributed in the hope that it will be useful,            }
{ but WITHOUT ANY WARRANTY; without even the implied warranty of             }
{ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                       }
{                                                                            }
{ See the GNU General Public License for more details.                       }
{                                                                            }
{----------------------------------------------------------------------------}
{ Updated on :  2003-06-04                                                   }
{ Updated by :  Scott Price (scott.price@totalise.co.uk)                     }
{               Mostly pointer de-references                                 }
{                                                                            }
{----------------------------------------------------------------------------}
{ * Still dependent (to compile correctly) on:                               }
{----------------------------------------------------------------------------}
{ * TODO:                                                                    }
{----------------------------------------------------------------------------}
{
==============================================================================

GLADIATOR

==============================================================================
}

unit m_gladiator;

interface

uses
  g_main,
  g_local;

procedure SP_monster_gladiator(self : edict_p); cdecl;

implementation

uses
  q_shared,
  g_ai,
  g_weapon,
  g_local_add,
  GameUnit,
  g_misc,
  g_utils,
  game_add,
  g_monster, m_flash, CPas;

var
  sound_pain1,
  sound_pain2,
  sound_die,
  sound_gun,
  sound_cleaver_swing,
  sound_cleaver_hit,
  sound_cleaver_miss,
  sound_idle,
  sound_search,
  sound_sight            : Integer;
  
// start m_gladiator.h
// G:\quake2\baseq2\models/monsters/gladiatr

// This file generated by ModelGen - Do NOT Modify

const
  FRAME_stand1  = 0;
  FRAME_stand2  = 1;
  FRAME_stand3  = 2;
  FRAME_stand4  = 3;
  FRAME_stand5  = 4;
  FRAME_stand6  = 5;
  FRAME_stand7  = 6;
  FRAME_walk1   = 7;
  FRAME_walk2   = 8;
  FRAME_walk3   = 9;
  FRAME_walk4   = 10;
  FRAME_walk5   = 11;
  FRAME_walk6   = 12;
  FRAME_walk7   = 13;
  FRAME_walk8   = 14;
  FRAME_walk9   = 15;
  FRAME_walk10  = 16;
  FRAME_walk11  = 17;
  FRAME_walk12  = 18;
  FRAME_walk13  = 19;
  FRAME_walk14  = 20;
  FRAME_walk15  = 21;
  FRAME_walk16  = 22;
  FRAME_run1    = 23;
  FRAME_run2    = 24;
  FRAME_run3    = 25;
  FRAME_run4    = 26;
  FRAME_run5    = 27;
  FRAME_run6    = 28;
  FRAME_melee1  = 29;
  FRAME_melee2  = 30;
  FRAME_melee3  = 31;
  FRAME_melee4  = 32;
  FRAME_melee5  = 33;
  FRAME_melee6  = 34;
  FRAME_melee7  = 35;
  FRAME_melee8  = 36;
  FRAME_melee9  = 37;
  FRAME_melee10 = 38;
  FRAME_melee11 = 39;
  FRAME_melee12 = 40;
  FRAME_melee13 = 41;
  FRAME_melee14 = 42;
  FRAME_melee15 = 43;
  FRAME_melee16 = 44;
  FRAME_melee17 = 45;
  FRAME_attack1 = 46;
  FRAME_attack2 = 47;
  FRAME_attack3 = 48;
  FRAME_attack4 = 49;
  FRAME_attack5 = 50;
  FRAME_attack6 = 51;
  FRAME_attack7 = 52;
  FRAME_attack8 = 53;
  FRAME_attack9 = 54;
  FRAME_pain1   = 55;
  FRAME_pain2   = 56;
  FRAME_pain3   = 57;
  FRAME_pain4   = 58;
  FRAME_pain5   = 59;
  FRAME_pain6   = 60;
  FRAME_death1  = 61;
  FRAME_death2  = 62;
  FRAME_death3  = 63;
  FRAME_death4  = 64;
  FRAME_death5  = 65;
  FRAME_death6  = 66;
  FRAME_death7  = 67;
  FRAME_death8  = 68;
  FRAME_death9  = 69;
  FRAME_death10 = 70;
  FRAME_death11 = 71;
  FRAME_death12 = 72;
  FRAME_death13 = 73;
  FRAME_death14 = 74;
  FRAME_death15 = 75;
  FRAME_death16 = 76;
  FRAME_death17 = 77;
  FRAME_death18 = 78;
  FRAME_death19 = 79;
  FRAME_death20 = 80;
  FRAME_death21 = 81;
  FRAME_death22 = 82;
  FRAME_painup1 = 83;
  FRAME_painup2 = 84;
  FRAME_painup3 = 85;
  FRAME_painup4 = 86;
  FRAME_painup5 = 87;
  FRAME_painup6 = 88;
  FRAME_painup7 = 89;

  MODEL_SCALE   = 1.000000;  

// end m_gladiator.h

procedure gladiator_idle(self : edict_p); cdecl;
begin
  gi.sound(self, CHAN_VOICE, sound_idle, 1, ATTN_IDLE, 0);
end;

procedure gladiator_sight(self, other : edict_p); cdecl;
begin
  gi.sound(self, CHAN_VOICE, sound_sight, 1, ATTN_NORM, 0);
end;

procedure gladiator_search(self : edict_p); cdecl;
begin
  gi.sound(self, CHAN_VOICE, sound_search, 1, ATTN_NORM, 0);
end;

procedure gladiator_cleaver_swing(self : edict_p); cdecl;
begin
  gi.sound(self, CHAN_WEAPON, sound_cleaver_swing, 1, ATTN_NORM, 0);
end;

const
  gladiator_frames_stand : Array[0..6] of mframe_t =
    ((aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil));

  gladiator_move_stand : mmove_t =
    (firstframe:FRAME_stand1; lastframe:FRAME_stand7; frame:@gladiator_frames_stand; endfunc:nil);

procedure gladiator_stand(self : edict_p); cdecl;
begin
  self^.monsterinfo.currentmove := @gladiator_move_stand;
end;

const
  gladiator_frames_walk : Array[0..15] of mframe_t =
    ((aifunc:ai_walk; dist:15; thinkfunc:nil),
     (aifunc:ai_walk; dist:7;  thinkfunc:nil),
     (aifunc:ai_walk; dist:6;  thinkfunc:nil),
     (aifunc:ai_walk; dist:5;  thinkfunc:nil),
     (aifunc:ai_walk; dist:2;  thinkfunc:nil),
     (aifunc:ai_walk; dist:0;  thinkfunc:nil),
     (aifunc:ai_walk; dist:2;  thinkfunc:nil),
     (aifunc:ai_walk; dist:8;  thinkfunc:nil),
     (aifunc:ai_walk; dist:12; thinkfunc:nil),
     (aifunc:ai_walk; dist:8;  thinkfunc:nil),
     (aifunc:ai_walk; dist:5;  thinkfunc:nil),
     (aifunc:ai_walk; dist:5;  thinkfunc:nil),
     (aifunc:ai_walk; dist:2;  thinkfunc:nil),
     (aifunc:ai_walk; dist:2;  thinkfunc:nil),
     (aifunc:ai_walk; dist:1;  thinkfunc:nil),
     (aifunc:ai_walk; dist:8;  thinkfunc:nil));

  gladiator_move_walk : mmove_t =
    (firstframe:FRAME_walk1; lastframe:FRAME_walk16; frame:@gladiator_frames_walk; endfunc:nil);

procedure gladiator_walk(self : edict_p); cdecl;
begin
  self^.monsterinfo.currentmove := @gladiator_move_walk;
end;

const
  gladiator_frames_run : Array[0..5] of mframe_t =
    ((aifunc:ai_run; dist:23; thinkfunc:nil),
     (aifunc:ai_run; dist:14; thinkfunc:nil),
     (aifunc:ai_run; dist:14; thinkfunc:nil),
     (aifunc:ai_run; dist:21; thinkfunc:nil),
     (aifunc:ai_run; dist:12; thinkfunc:nil),
     (aifunc:ai_run; dist:13; thinkfunc:nil));

  gladiator_move_run : mmove_t =
    (firstframe:FRAME_run1; lastframe:FRAME_run6; frame:@gladiator_frames_run; endfunc:nil);

procedure gladiator_run(self : edict_p); cdecl;
begin
  if (self^.monsterinfo.aiflags and AI_STAND_GROUND) <> 0 then
    self^.monsterinfo.currentmove := @gladiator_move_stand
  else
    self^.monsterinfo.currentmove := @gladiator_move_run;
end;

procedure GaldiatorMelee(self : edict_p); cdecl;
var
  aim : vec3_t;
begin
  VectorSet(aim, MELEE_DISTANCE, self^.mins[0], -4);
  if (fire_hit(Self, aim, (20 + (rand() mod 5)), 300)) then
    gi.sound(self, CHAN_AUTO, sound_cleaver_hit, 1, ATTN_NORM, 0)
  else
    gi.sound(self, CHAN_AUTO, sound_cleaver_miss, 1, ATTN_NORM, 0);
end;

const
  gladiator_frames_attack_melee : Array[0..16] of mframe_t =
    ((aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:gladiator_cleaver_swing),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:GaldiatorMelee),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:gladiator_cleaver_swing),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:GaldiatorMelee),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil));

  gladiator_move_attack_melee : mmove_t =
    (firstframe:FRAME_melee1; lastframe:FRAME_melee17; frame:@gladiator_frames_attack_melee; endfunc:gladiator_run);

procedure gladiator_melee(self : edict_p); cdecl;
begin
  self^.monsterinfo.currentmove := @gladiator_move_attack_melee;
end;

procedure GladiatorGun(self : edict_p); cdecl;
var
  start       : vec3_t;
  dir         : vec3_t;
  fwrd, right : vec3_t;
begin
  AngleVectors(self^.s.angles, @fwrd, @right, nil);
  G_ProjectSource(self^.s.origin, monster_flash_offset[MZ2_GLADIATOR_RAILGUN_1], fwrd, right, start);

  // calc direction to where we targted
  VectorSubtract(self^.pos1, start, dir);
  VectorNormalize(dir);

  monster_fire_railgun(self, start, dir, 50, 100, MZ2_GLADIATOR_RAILGUN_1);
end;

const
  gladiator_frames_attack_gun : Array[0..8] of mframe_t =
    ((aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:GladiatorGun),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil));

  gladiator_move_attack_gun : mmove_t =
    (firstframe:FRAME_attack1; lastframe:FRAME_attack9; frame:@gladiator_frames_attack_gun; endfunc:gladiator_run);

procedure gladiator_attack(self : edict_p); cdecl;
var
  range : single;
  v     : vec3_t;
begin
  // a small safe zone
  VectorSubtract(self^.s.origin, self^.enemy^.s.origin, v);
  range := VectorLength(v);
  if(range <= (MELEE_DISTANCE + 32)) then
    Exit;

  // charge up the railgun
  gi.sound(self, CHAN_WEAPON, sound_gun, 1, ATTN_NORM, 0);
  VectorCopy(self^.enemy^.s.origin, self^.pos1);	//save for aiming the shot
  self^.pos1[2] := self^.pos1[2] + self^.enemy^.viewheight;
  self^.monsterinfo.currentmove := @gladiator_move_attack_gun;
end;

const
  gladiator_frames_pain : Array[0..5] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  gladiator_move_pain : mmove_t =
    (firstframe:FRAME_pain1; lastframe:FRAME_pain6; frame:@gladiator_frames_pain; endfunc:gladiator_run);

  gladiator_frames_pain_air : Array[0..6] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  gladiator_move_pain_air : mmove_t =
    (firstframe:FRAME_painup1; lastframe:FRAME_painup7; frame:@gladiator_frames_pain_air; endfunc:gladiator_run);

procedure gladiator_pain(self, other : edict_p; kick : single; damage : integer); cdecl;
begin
  if (self^.health < (self^.max_health / 2)) then
    self^.s.skinnum := 1;

  if (level.time < self^.pain_debounce_time) then
  begin
    if ((self^.velocity[2] > 100) and (self^.monsterinfo.currentmove = @gladiator_move_pain)) then
      self^.monsterinfo.currentmove := @gladiator_move_pain_air;
    Exit;
  end;

  self^.pain_debounce_time := level.time + 3;

  if (_random() < 0.5) then
    gi.sound(self, CHAN_VOICE, sound_pain1, 1, ATTN_NORM, 0)
  else
    gi.sound(self, CHAN_VOICE, sound_pain2, 1, ATTN_NORM, 0);

  if skill^.value = 3 then
    Exit;		// no pain anims in nightmare

  if (self^.velocity[2] > 100) then
    self^.monsterinfo.currentmove := @gladiator_move_pain_air
  else
    self^.monsterinfo.currentmove := @gladiator_move_pain;
end;

procedure gladiator_dead(self : edict_p); cdecl;
begin
  VectorSet(self^.mins, -16, -16, -24);
  VectorSet(self^.maxs, 16, 16, -8);
  self^.movetype := MOVETYPE_TOSS;
  self^.svflags := self^.svflags or SVF_DEADMONSTER;
  self^.nextthink := 0;
  gi.linkentity(self);
end;

const
  gladiator_frames_death : Array[0..21] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  gladiator_move_death : mmove_t =
    (firstframe:FRAME_death1; lastframe:FRAME_death22; frame:@gladiator_frames_death; endfunc:gladiator_dead);

procedure gladiator_die(self, inflictor, attacker : edict_p; damage : integer; const point : vec3_t); cdecl;
var
  n : integer;
begin
  // check for gib
  if (self^.health <= self^.gib_health) then
  begin
    gi.sound(self, CHAN_VOICE, gi.soundindex('misc/udeath.wav'), 1, ATTN_NORM, 0);
    for n := 0 to 1 do
      ThrowGib(self, 'models/objects/gibs/bone/tris.md2', damage, GIB_ORGANIC);
    for n := 0 to 3 do
      ThrowGib(self, 'models/objects/gibs/sm_meat/tris.md2', damage, GIB_ORGANIC);
    ThrowHead(self, 'models/objects/gibs/head2/tris.md2', damage, GIB_ORGANIC);
    self^.deadflag := DEAD_DEAD;
    Exit;
  end;

  if self^.deadflag = DEAD_DEAD then
    Exit;

  // regular death
  gi.sound(self, CHAN_VOICE, sound_die, 1, ATTN_NORM, 0);
  self^.deadflag   := DEAD_DEAD;
  self^.takedamage := DAMAGE_YES;

  self^.monsterinfo.currentmove := @gladiator_move_death;
end;


{QUAKED monster_gladiator (1 .5 0) (-32 -32 -24) (32 32 64) Ambush Trigger_Spawn Sight
}
procedure SP_monster_gladiator(self : edict_p);
begin
  if (deathmatch^.Value <> 0) then
  begin
    G_FreeEdict(self);
    Exit;
  end;

  sound_pain1         := gi.soundindex('gladiator/pain.wav');
  sound_pain2         := gi.soundindex('gladiator/gldpain2.wav');
  sound_die           := gi.soundindex('gladiator/glddeth2.wav');
  sound_gun           := gi.soundindex('gladiator/railgun.wav');
  sound_cleaver_swing := gi.soundindex('gladiator/melee1.wav');
  sound_cleaver_hit   := gi.soundindex('gladiator/melee2.wav');
  sound_cleaver_miss  := gi.soundindex('gladiator/melee3.wav');
  sound_idle          := gi.soundindex('gladiator/gldidle1.wav');
  sound_search        := gi.soundindex('gladiator/gldsrch1.wav');
  sound_sight         := gi.soundindex('gladiator/sight.wav');

  self^.movetype := MOVETYPE_STEP;
  self^.solid := SOLID_BBOX;
  self^.s.modelindex := gi.modelindex('models/monsters/gladiatr/tris.md2');
  VectorSet(self^.mins, -32, -32, -24);
  VectorSet(self^.maxs, 32, 32, 64);

  self^.health     :=  400;
  self^.gib_health := -175;
  self^.mass       :=  400;

  self^.pain := gladiator_pain;
  self^.die  := gladiator_die;

  self^.monsterinfo.stand  := gladiator_stand;
  self^.monsterinfo.walk   := gladiator_walk;
  self^.monsterinfo.run    := gladiator_run;
  self^.monsterinfo.dodge  := nil;
  self^.monsterinfo.attack := gladiator_attack;
  self^.monsterinfo.melee  := gladiator_melee;
  self^.monsterinfo.sight  := gladiator_sight;
  self^.monsterinfo.idle   := gladiator_idle;
  self^.monsterinfo.search := gladiator_search;

  gi.linkentity(self);
  self^.monsterinfo.currentmove := @gladiator_move_stand;
  self^.monsterinfo.scale       := MODEL_SCALE;

  walkmonster_start(self);
end;

end.