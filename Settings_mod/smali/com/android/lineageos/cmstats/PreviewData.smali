.class public Lcom/android/lineageos/cmstats/PreviewData;
.super Lcom/android/lineageos/SettingsPreferenceFragment;
.source "PreviewData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/lineageos/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 53
    const v0, -0x7ffffff2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/lineageos/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/android/lineageos/cmstats/PreviewData;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/lineageos/cmstats/PreviewData;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 42
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lineageos/cmstats/PreviewData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "preview_id"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/lineageos/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    const-string/jumbo v2, "preview_device"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {}, Lcom/android/lineageos/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    const-string/jumbo v2, "preview_version"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {}, Lcom/android/lineageos/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    const-string/jumbo v2, "preview_country"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/lineageos/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    const-string/jumbo v2, "preview_carrier"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/lineageos/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
