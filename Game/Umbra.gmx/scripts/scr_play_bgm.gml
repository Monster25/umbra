//Check if sound is playing, stop all other sounds and then play the sound;
if (!audio_is_playing(argument0))
{
audio_group_set_gain(music,0,5000);
audio_group_stop_all(music);
audio_play_sound(argument0,1,1);
audio_group_set_gain(music,1,5000);
}
