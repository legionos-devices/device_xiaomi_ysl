package com.xiaomi.parts;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragment;
import androidx.preference.PreferenceManager;
import androidx.preference.SwitchPreference;

import com.xiaomi.parts.kcal.KCalSettingsActivity;
import com.xiaomi.parts.ambient.AmbientGesturePreferenceActivity;
import com.xiaomi.parts.preferences.SecureSettingListPreference;
import com.xiaomi.parts.preferences.SecureSettingSwitchPreference;
import com.xiaomi.parts.preferences.VibrationSeekBarPreference;
import com.xiaomi.parts.preferences.CustomSeekBarPreference;
<<<<<<< HEAD
=======
import com.xiaomi.parts.preferences.NotificationLedSeekBarPreference;
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

import com.xiaomi.parts.R;

public class DeviceSettings extends PreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private static final String CATEGORY_DISPLAY = "display";
    private static final String PREF_DEVICE_KCAL = "device_kcal";

    private static final String AMBIENT_DISPLAY = "ambient_display_gestures";

    private static final String PREF_ENABLE_DIRAC = "dirac_enabled";
    private static final String PREF_HEADSET = "dirac_headset_pref";
    private static final String PREF_PRESET = "dirac_preset_pref";

    public static final String PREF_VIBRATION_STRENGTH = "vibration_strength";
<<<<<<< HEAD
    public static final String VIBRATION_STRENGTH_PATH = "/sys/devices/virtual/timed_output/vibrator/vtg_level";

    public static final String PREF_KEY_FPS_INFO = "fps_info";
=======
    public static final String VIBRATION_STRENGTH_PATH = "/sys/devices/platform/soc/200f000.qcom,spmi/spmi-0/spmi0-03/200f000.qcom,spmi:qcom,pmi8940@3:qcom,haptics@c000/leds/vibrator/vmax_mv_user";

    public static final String PREF_KEY_FPS_INFO = "fps_info";
	
	public static final String CATEGORY_NOTIF = "notification_led";
    public static final String PREF_NOTIF_LED = "notification_led_brightness";
    public static final String NOTIF_LED_PATH = "/sys/class/leds/red/max_brightness";
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

    // value of vtg_min and vtg_max
    public static final int MIN_VIBRATION = 116;
    public static final int MAX_VIBRATION = 3596;

<<<<<<< HEAD
    public static final  String PREF_HEADPHONE_GAIN = "headphone_gain";
    public static final  String PREF_MICROPHONE_GAIN = "microphone_gain";
    public static final  String HEADPHONE_GAIN_PATH = "/sys/kernel/sound_control/headphone_gain";
    public static final  String MICROPHONE_GAIN_PATH = "/sys/kernel/sound_control/mic_gain";
    public static final  String PREF_BACKLIGHT_DIMMER = "backlight_dimmer";
    public static final  String BACKLIGHT_DIMMER_PATH = "/sys/module/mdss_fb/parameters/backlight_dimmer";
=======
    public static final int MIN_LED = 150;
    public static final int MAX_LED = 255;

>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
	public static final String CATEGORY_FASTCHARGE = "usb_fastcharge";
    public static final String PREF_USB_FASTCHARGE = "fastcharge";
    public static final String USB_FASTCHARGE_PATH = "/sys/kernel/fast_charge/force_fast_charge";

	private SecureSettingSwitchPreference mFastcharge;

    //public static final String PREF_TORCH_BRIGHTNESS = "torch_brightness";
    //private static final String TORCH_1_BRIGHTNESS_PATH = "/sys/devices/soc/800f000.qcom," +
    //        "spmi/spmi-0/spmi0-03/800f000.qcom,spmi:qcom,pm660l@3:qcom,leds@d300/leds/led:torch_0/max_brightness";
    //private static final String TORCH_2_BRIGHTNESS_PATH = "/sys/devices/soc/800f000.qcom," +
    //        "spmi/spmi-0/spmi0-03/800f000.qcom,spmi:qcom,pm660l@3:qcom,leds@d300/leds/led:torch_1/max_brightness";


    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.xiaomiparts_preferences, rootKey);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.getContext());
<<<<<<< HEAD

=======
           
        if (FileUtils.fileWritable(NOTIF_LED_PATH)) {
            NotificationLedSeekBarPreference notifLedBrightness =
                    (NotificationLedSeekBarPreference) findPreference(PREF_NOTIF_LED);
            notifLedBrightness.setOnPreferenceChangeListener(this);
        } else { getPreferenceScreen().removePreference(findPreference(CATEGORY_NOTIF)); }
		
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
        VibrationSeekBarPreference vibrationStrength = (VibrationSeekBarPreference) findPreference(PREF_VIBRATION_STRENGTH);
        vibrationStrength.setEnabled(FileUtils.fileWritable(VIBRATION_STRENGTH_PATH));
        vibrationStrength.setOnPreferenceChangeListener(this);

<<<<<<< HEAD
        CustomSeekBarPreference headphone_gain = (CustomSeekBarPreference) findPreference(PREF_HEADPHONE_GAIN);
        headphone_gain.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference microphone_gain = (CustomSeekBarPreference) findPreference(PREF_MICROPHONE_GAIN);
        microphone_gain.setOnPreferenceChangeListener(this);

=======
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
        //CustomSeekBarPreference torch_brightness = (CustomSeekBarPreference) findPreference(PREF_TORCH_BRIGHTNESS);
        //torch_brightness.setEnabled(FileUtils.fileWritable(TORCH_1_BRIGHTNESS_PATH) &&
        //        FileUtils.fileWritable(TORCH_2_BRIGHTNESS_PATH));
        //torch_brightness.setOnPreferenceChangeListener(this);

        boolean enhancerEnabled;
        try {
            enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
        } catch (java.lang.NullPointerException e) {
            getContext().startService(new Intent(getContext(), DiracService.class));
            try {
                enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
            } catch (NullPointerException ne) {
                // Avoid crash
                ne.printStackTrace();
                enhancerEnabled = false;
            }
        }

        SecureSettingSwitchPreference enableDirac = (SecureSettingSwitchPreference) findPreference(PREF_ENABLE_DIRAC);
        enableDirac.setOnPreferenceChangeListener(this);
        enableDirac.setChecked(enhancerEnabled);

        SecureSettingListPreference headsetType = (SecureSettingListPreference) findPreference(PREF_HEADSET);
        headsetType.setOnPreferenceChangeListener(this);

        SecureSettingListPreference preset = (SecureSettingListPreference) findPreference(PREF_PRESET);
        preset.setOnPreferenceChangeListener(this);
		
		if (FileUtils.fileWritable(USB_FASTCHARGE_PATH)) {
        mFastcharge = (SecureSettingSwitchPreference) findPreference(PREF_USB_FASTCHARGE);
        mFastcharge.setChecked(FileUtils.getFileValueAsBoolean(USB_FASTCHARGE_PATH, true));
        mFastcharge.setOnPreferenceChangeListener(this);
        } else {
            getPreferenceScreen().removePreference(findPreference(CATEGORY_FASTCHARGE));
        }

        PreferenceCategory displayCategory = (PreferenceCategory) findPreference(CATEGORY_DISPLAY);

<<<<<<< HEAD
        SecureSettingSwitchPreference backlightDimmer = (SecureSettingSwitchPreference) findPreference(PREF_BACKLIGHT_DIMMER);
        backlightDimmer.setEnabled(BacklightDimmer.isSupported());
        backlightDimmer.setChecked(BacklightDimmer.isCurrentlyEnabled(this.getContext()));
        backlightDimmer.setOnPreferenceChangeListener(new BacklightDimmer(getContext()));

=======
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
        SwitchPreference fpsInfo = (SwitchPreference) findPreference(PREF_KEY_FPS_INFO);
        fpsInfo.setChecked(prefs.getBoolean(PREF_KEY_FPS_INFO, false));
        fpsInfo.setOnPreferenceChangeListener(this);

        Preference kcal = findPreference(PREF_DEVICE_KCAL);
        kcal.setOnPreferenceClickListener(preference -> {
            Intent intent = new Intent(getActivity().getApplicationContext(), KCalSettingsActivity.class);
            startActivity(intent);
            return true;
        });

        Preference ambientDisplay = findPreference(AMBIENT_DISPLAY);
        ambientDisplay.setOnPreferenceClickListener(preference -> {
            Intent intent = new Intent(getContext(), AmbientGesturePreferenceActivity.class);
            startActivity(intent);
            return true;
        });
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object value) {
        final String key = preference.getKey();
        switch (key) {
<<<<<<< HEAD
=======
	    case PREF_NOTIF_LED:
                FileUtils.setValue(NOTIF_LED_PATH, (int) value / 100.0 * (MAX_LED - MIN_LED) + MIN_LED);
                break;

>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
            //case PREF_TORCH_BRIGHTNESS:
            //    FileUtils.setValue(TORCH_1_BRIGHTNESS_PATH, (int) value);
            //    FileUtils.setValue(TORCH_2_BRIGHTNESS_PATH, (int) value);
            //    break;

            case PREF_VIBRATION_STRENGTH:
                double vibrationValue = (int) value / 100.0 * (MAX_VIBRATION - MIN_VIBRATION) + MIN_VIBRATION;
                FileUtils.setValue(VIBRATION_STRENGTH_PATH, vibrationValue);
                break;

<<<<<<< HEAD
            case PREF_HEADPHONE_GAIN:
                FileUtils.setValue(HEADPHONE_GAIN_PATH, value + " " + value);
                break;

            case PREF_MICROPHONE_GAIN:
                FileUtils.setValue(MICROPHONE_GAIN_PATH, (int) value);
                break;

=======
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
            case PREF_ENABLE_DIRAC:
                try {
                    DiracService.sDiracUtils.setEnabled((boolean) value);
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setEnabled((boolean) value);
                }
                break;

            case PREF_HEADSET:
                try {
                    DiracService.sDiracUtils.setHeadsetType(Integer.parseInt(value.toString()));
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setHeadsetType(Integer.parseInt(value.toString()));
                }
                break;

            case PREF_PRESET:
                try {
                    DiracService.sDiracUtils.setLevel(String.valueOf(value));
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setLevel(String.valueOf(value));
                }
                break;
            case PREF_KEY_FPS_INFO:
                boolean enabled = (Boolean) value;
                Intent fpsinfo = new Intent(this.getContext(), FPSInfoService.class);
                if (enabled) {
                    this.getContext().startService(fpsinfo);
                } else {
                    this.getContext().stopService(fpsinfo);
                }
                break;

            default:
                break;
        }
        return true;
    }

    private boolean isAppNotInstalled(String uri) {
        PackageManager packageManager = getContext().getPackageManager();
        try {
            packageManager.getPackageInfo(uri, PackageManager.GET_ACTIVITIES);
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}
