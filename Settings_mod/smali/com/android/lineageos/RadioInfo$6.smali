.class Lcom/android/lineageos/RadioInfo$6;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lineageos/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/RadioInfo;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/lineageos/RadioInfo$6;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/lineageos/RadioInfo$6;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v0}, Lcom/android/lineageos/RadioInfo;->-get10(Lcom/android/lineageos/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 914
    const/4 v0, 0x1

    return v0
.end method
