DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20240413200335');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20240413200335');
-- Add your query below.


/*
World of Warcraft Client Patch 1.7.0 (2005-09-13)
- The summoning crystals of Andorhal have been removed; as a result,
  Araj the Summoner will behave like a normal spawn. The respawn time
  on Araj once he is slain is 10-15 minutes. It should be noted that
  the spawns surrounding where he holds dominion have been maintained;
  players seeking to defeat him should not be shy about bringing
  friends with them.
- Araj the Summoner now has increased hit points and does increased
  melee damage.
- The text for the Horde and Alliance versions of "Araj's Scarab" now
  reflect the changes done to the Araj encounter.
- The text for the Horde and Alliance versions of "Alas, Andorhal" now
  reflect the changes done to the Araj encounter.
*/

-- Alas, Andorhal (Horde)
DELETE FROM `quest_template` WHERE `entry`=105;
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (105, 0, 2, 28, 50, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5098, 0, 0, 0, 0, 0, 0, 0, 'Alas, Andorhal', 'Alas, the time to attack Andorhal and drive out the lich that controls it is upon us!$B$BYou may have noticed a summoning crystal inside the watchtowers you marked.  We believe these feed the lich power needed to dominate the city.  You must take down all four of them; destroying one will no doubt summon more of the lich\'s troops.  If all four are down, the lich itself should arise to defend the heart of the city.$B$BDestroy the lich, $N, and bring me a shard from its phylactery as proof!', 'Bring Araj\'s Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.', 'You\'ve done it!  Araj... the lich is finally defeated!$B$BYou\'ve done a tremendous service to the Horde on this day, $N.  Your bravery and perseverance are a testament to what it means to be a true hero.  Please - accept this as a token for all to see and know that you have delivered the Horde a victory for the ages!', 'Your task has been given to you, $N.  Do you have a shard from the lich\'s phylactery as proof of the task being accomplished?', '', '', '', '', '', 17114, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17759, 0, 0, 0, 1, 0, 0, 0, 67, 529, 0, 0, 0, 150, 150, 0, 0, 0, 8300, 0, 49800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (105, 5, 2, 28, 50, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5098, 0, 0, 0, 0, 0, 0, 0, 'Alas, Andorhal', 'Alas, the time to attack Andorhal and drive out the lich that controls it is upon us!$B$BInside the ruins of the city is where the lich - Araj the Summoner - holds dominion.  He is guarded by numerous Scourge surrounding the remains of city\'s center, and his personal retinue of guardians attached to him directly is formidable.  You will need numerous allies to even stand a chance of facing him successfully.$B$BDestroy Araj, $N, and bring me a shard from his phylactery as proof!', 'Bring Araj\'s Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.', 'You\'ve done it!  Araj... the lich is finally defeated!$B$BYou\'ve done a tremendous service to the Horde on this day, $N.  Your bravery and perseverance are a testament to what it means to be a true hero.  Please - accept this as a token for all to see and know that you have delivered the Horde a victory for the ages!', 'Your task has been given to you, $N.  Do you have a shard from the lich\'s phylactery as proof of the task being accomplished?', NULL, NULL, NULL, NULL, NULL, 17114, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17759, 0, 0, 0, 1, 0, 0, 0, 67, 529, 0, 0, 0, 150, 150, 0, 0, 0, 8300, 0, 49800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Alas, Andorhal (Alliance)
DELETE FROM `quest_template` WHERE `entry`=211;
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (211, 0, 2, 28, 50, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5097, 0, 0, 0, 0, 0, 0, 0, 'Alas, Andorhal', 'Alas, the time to attack Andorhal and drive out the lich that controls it is upon us!$B$BYou may have noticed a summoning crystal inside the watchtowers you marked.  We believe these feed the lich power needed to dominate the city.  You must take down all four of them; destroying one will no doubt summon more of the lich\'s troops.  If all four are down, the lich itself should arise to defend the heart of the city.$B$BDestroy the lich, $N, and bring me a shard from its phylactery as proof!', 'Bring Araj\'s Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.', 'You\'ve done it!  Araj... the lich is finally defeated!$B$BYou\'ve done a tremendous service to the Alliance on this day, $N.  Your bravery and perseverance are a testament to what it means to be a true hero.  Please - accept this as a token for all to see and know that you have delivered the Alliance a victory for the ages!', 'Your task has been given to you, $N.  Do you have a shard from the lich\'s phylactery as proof of the task being accomplished?', '', '', '', '', '', 17114, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17759, 0, 0, 0, 1, 0, 0, 0, 469, 529, 0, 0, 0, 150, 150, 0, 0, 0, 8300, 0, 49800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (211, 5, 2, 28, 50, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5097, 0, 0, 0, 0, 0, 0, 0, 'Alas, Andorhal', 'Alas, the time to attack Andorhal and drive out the lich that controls it is upon us!$B$BInside the ruins of the city is where the lich - Araj the Summoner - holds dominion.  He is guarded by numerous Scourge surrounding the remains of city\'s center, and his personal retinue of guardians attached to him directly is formidable.  You will need numerous allies to even stand a chance of facing him successfully.$B$BDestroy Araj, $N, and bring me a shard from his phylactery as proof!', 'Bring Araj\'s Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.', 'You\'ve done it!  Araj... the lich is finally defeated!$B$BYou\'ve done a tremendous service to the Alliance on this day, $N.  Your bravery and perseverance are a testament to what it means to be a true hero.  Please - accept this as a token for all to see and know that you have delivered the Alliance a victory for the ages!', 'Your task has been given to you, $N.  Do you have a shard from the lich\'s phylactery as proof of the task being accomplished?', NULL, NULL, NULL, NULL, NULL, 17114, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17759, 0, 0, 0, 1, 0, 0, 0, 469, 529, 0, 0, 0, 150, 150, 0, 0, 0, 8300, 0, 49800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 6, 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Araj's Scarab (Alliance)
DELETE FROM `quest_template` WHERE `entry`=5803;
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (5803, 0, 2, 28, 55, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5801, 0, 0, 0, 0, 0, 0, 0, 'Araj\'s Scarab', 'Araj the Summoner lords over Andorhal from an obfuscated vantage.  We know that he was the former leader of Scholomance before claiming the city as his own.  To finish the key, we will need his signet - called a scarab - mounted as the head of the key.$B$BIn the city are four summoning crystals, one in each tower you marked for us previously.  Destroy all four crystals and break his hold on the city, drawing him into the open.  Once destroyed, seize his scarab from his fallen phylactery!', 'Destroy the four Scourge Summoning Crystals inside Andorhal to call forth Araj the Summoner.  Destroy Araj the Summoner and bring Araj\'s Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.', 'Yes, this is it!  I... again, I\'m absolutely amazed at the depths of your heroism.  It simply boggles the mind the lengths you are willing to go to achieve victory over the forces of darkness.$B$BAllow me now to play my small part in this.  I\'ve prepared a special solvent that should allow me to secure the scarab on as the head of the key, infusing it with the power to breach the locked door of Scholomance.$B$BHere goes nothing...', 'You\'ve come this far $N - only the destruction of the physical form of Araj the Summoner will provide us with the means to finish the key.  Get Araj\'s scarab by whatever means necessary and bring it to me - I will fuse it on as the head of the key.', '', '', '', '', '', 14610, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4950, 0, 29700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5803);
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (5803, 5, 2, 28, 55, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5801, 0, 0, 0, 0, 0, 0, 0, 'Araj\'s Scarab', 'Araj the Summoner lords over Andorhal from the ruined city\'s heart.  We know that he was the former leader of Scholomance before claiming the city as his own.  To finish the key, we will need his signet - called a scarab - mounted as the head of the key.$B$BMake your way into the heart of Andorhal, and break his hold on the city now that he is drawn into the open.  Once destroyed, seize his scarab from his fallen phylactery!$B$BThe Key to Scholomance awaits, $N!', 'Destroy Araj the Summoner and bring Araj\'s Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.', 'Yes, this is it!  I... again, I\'m absolutely amazed at the depths of your heroism.  It simply boggles the mind the lengths you are willing to go to achieve victory over the forces of darkness.$B$BAllow me now to play my small part in this.  I\'ve prepared a special solvent that should allow me to secure the scarab on as the head of the key, infusing it with the power to breach the locked door of Scholomance.$B$BHere goes nothing...', 'You\'ve come this far $N - only the destruction of the physical form of Araj the Summoner will provide us with the means to finish the key.  Get Araj\'s scarab by whatever means necessary and bring it to me - I will fuse it on as the head of the key.', NULL, NULL, NULL, NULL, NULL, 14610, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4950, 0, 29700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5803);

-- Araj's Scarab (Horde)
DELETE FROM `quest_template` WHERE `entry`=5804;
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (5804, 0, 2, 28, 55, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5802, 0, 0, 0, 0, 0, 0, 0, 'Araj\'s Scarab', 'Araj the Summoner lords over Andorhal from an obfuscated vantage.  We know that he was the former leader of Scholomance before claiming the city as his own.  To finish the key, we will need his signet - called a scarab - mounted as the head of the key.$B$BIn the city are four summoning crystals, one in each tower you marked for us previously.  Destroy all four crystals and break his hold on the city, drawing him into the open.  Once destroyed, seize his scarab from his fallen phylactery!', 'Destroy the four Scourge Summoning Crystals inside Andorhal to call forth Araj the Summoner.  Destroy Araj the Summoner and bring Araj\'s Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.', 'Yes, this is it!  I... again, I\'m absolutely amazed at the depths of your cunning and bravery.  It simply boggles the mind the lengths you are willing to go in order achieve victory.$B$BAllow me now to play my small part in this.  I\'ve prepared a special solvent that should allow me to secure the scarab on as the head of the key, infusing it with the power to breech the locked door of Scholomance.$B$BThis should take just a moment...', 'You\'ve come this far $N - only the destruction of the physical form of Araj the Summoner will provide us with the means to finish the key.  Get Araj\'s scarab, by hook or by crook, and bring it to me - I will fuse it on as the head of the key.', '', '', '', '', '', 14610, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4950, 0, 29700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5804);
INSERT INTO `quest_template` (`entry`, `patch`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RequiredCondition`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (5804, 5, 2, 28, 55, 0, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5802, 0, 0, 0, 0, 0, 0, 0, 'Araj\'s Scarab', 'Araj the Summoner lords over Andorhal from the ruined city\'s heart.  We know that he was the former leader of Scholomance before claiming the city as his own.  To finish the key, we will need his signet - called a scarab - mounted as the head of the key.$B$BMake your way into the heart of Andorhal, and break his hold on the city now that he is drawn into the open.  Once destroyed, seize his scarab from his fallen phylactery!$B$BThe Key to Scholomance awaits, $N!', 'Destroy Araj the Summoner and bring Araj\'s Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.', 'Yes, this is it!  I... again, I\'m absolutely amazed at the depths of your cunning and bravery.  It simply boggles the mind the lengths you are willing to go in order achieve victory.$B$BAllow me now to play my small part in this.  I\'ve prepared a special solvent that should allow me to secure the scarab on as the head of the key, infusing it with the power to breech the locked door of Scholomance.$B$BThis should take just a moment...', 'You\'ve come this far $N - only the destruction of the physical form of Araj the Summoner will provide us with the means to finish the key.  Get Araj\'s scarab, by hook or by crook, and bring it to me - I will fuse it on as the head of the key.', NULL, NULL, NULL, NULL, NULL, 14610, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4950, 0, 29700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5804);

-- Correct faction of Scourge Summoning Crystal.
UPDATE `creature_template` SET `faction`=974 WHERE `entry`=11623;

-- Add spawn points for Scourge Summoning Crystal from SDB.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `movement_type`, `wander_distance`, `patch_min`, `patch_max`) VALUES (8084, 11623, 0, 1303.91, -1319, 64.393, 0.923, 480, 500, 0, 0, 0, 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `movement_type`, `wander_distance`, `patch_min`, `patch_max`) VALUES (8085, 11623, 0, 1311.9, -1589, 61.916, 0.034, 480, 500, 0, 0, 0, 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `movement_type`, `wander_distance`, `patch_min`, `patch_max`) VALUES (8086, 11623, 0, 1481.4, -1415, 67.852, 0.611, 480, 500, 0, 0, 0, 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `movement_type`, `wander_distance`, `patch_min`, `patch_max`) VALUES (8087, 11623, 0, 1558.19, -1469, 68.398, 4.402, 480, 500, 0, 0, 0, 4);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (8084, 8084, 0, 0, 8);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (8084, 8085, 0, 0, 8);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (8084, 8086, 0, 0, 8);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES (8084, 8087, 0, 0, 8);

-- Events list for Scourge Summoning Crystal
DELETE FROM `creature_ai_events` WHERE `creature_id`=11623;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1162301, 11623, 302, 6, 0, 100, 0, 0, 0, 0, 0, 1162301, 0, 0, 'Scourge Summoning Crystal - Summon Araj on Group Dead');
DELETE FROM `creature_ai_scripts` WHERE `id`=1162301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1162301, 0, 0, 10, 1852, 900000, 1, 300, 0, 0, 0, 0, 8, 0, -1, 1, 1381.25, -1543.54, 58.6043, 4.72984, 0, 'Scourge Summoning Crystal - Summon Araj the Summoner');
UPDATE `creature_template` SET `ai_name`='EventAI', `mechanic_immune_mask`=551240223 WHERE `entry`=11623;

-- Araj the Summoner is not perma spawned before 1.7.
UPDATE `creature` SET `patch_min`=5 WHERE `id`=1852;

-- Reduce Araj the Summoner's health and damage before 1.7.
DELETE FROM `creature_template` WHERE `entry`=1852;
INSERT INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (1852, 0, 'Araj the Summoner', NULL, 61, 61, 21, 0, 0, 7919, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1.14286, 20, 5, 0, 6, 0, 1, 2, 1, 2, 3, 1.15, 1.1, 0.14, 0, 2000, 2000, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1852, 0, 0, 458, 1364, 0, 6136, 0, 0, 18520, 0, 0, NULL, 'EventAI', 0, 3, 0, 0, 0, 0, 0, 8388624, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_template` (`entry`, `patch`, `name`, `subname`, `level_min`, `level_max`, `faction`, `npc_flags`, `gossip_menu_id`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `display_scale1`, `display_scale2`, `display_scale3`, `display_scale4`, `display_probability1`, `display_probability2`, `display_probability3`, `display_probability4`, `display_total_probability`, `mount_display_id`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `type`, `pet_family`, `rank`, `unit_class`, `xp_multiplier`, `health_multiplier`, `mana_multiplier`, `armor_multiplier`, `damage_multiplier`, `damage_variance`, `damage_school`, `base_attack_time`, `ranged_attack_time`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `gold_min`, `gold_max`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `static_flags1`, `static_flags2`, `flags_extra`, `script_name`) VALUES (1852, 5, 'Araj the Summoner', NULL, 61, 61, 21, 0, 0, 7919, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1.14286, 20, 5, 0, 6, 0, 1, 2, 1, 3.3, 3, 1.15, 2.2, 0.14, 0, 2000, 2000, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1852, 0, 0, 458, 1364, 0, 6136, 0, 0, 18520, 0, 0, NULL, 'EventAI', 0, 3, 0, 0, 0, 0, 0, 8388624, 0, 0, 0, 0, 0, '');


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;