import QtQuick 2.15
import QtMultimedia


Item {
    SoundEffect {
        id: playSFX
        source: instance_of_default_qml_class_values.soundEffectsPlayerSoundFileLoadedIn
    }

    function muteSoundPlayer(){
        instance_of_default_qml_class_values.soundEffectsMuted = true
        playSFX.muted = true
    }

    function activateSoundPlayer(SFXToPlay){
        if(playSFX.playing == true){
            playSFX.stop()
        }

        if(
        (instance_of_default_qml_class_values.soundEffectsMuted == false)
        ){
            instance_of_default_qml_class_values.soundEffectsPlayerSoundFileLoadedIn = SFXToPlay
            playSFX.play()
        }
    }
}
