.class Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/lineageos/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/lineageos/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0}, Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;->-wrap1(Lcom/android/lineageos/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 69
    return-void
.end method
