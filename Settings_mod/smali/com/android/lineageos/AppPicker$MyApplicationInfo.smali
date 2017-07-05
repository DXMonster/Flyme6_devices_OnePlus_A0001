.class Lcom/android/lineageos/AppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/lineageos/AppPicker;


# direct methods
.method constructor <init>(Lcom/android/lineageos/AppPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/AppPicker;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/lineageos/AppPicker$MyApplicationInfo;->this$0:Lcom/android/lineageos/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
