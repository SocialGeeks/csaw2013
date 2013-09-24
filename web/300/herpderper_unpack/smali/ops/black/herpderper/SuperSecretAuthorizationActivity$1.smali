.class Lops/black/herpderper/SuperSecretAuthorizationActivity$1;
.super Ljava/lang/Object;
.source "SuperSecretAuthorizationActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lops/black/herpderper/SuperSecretAuthorizationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;


# direct methods
.method constructor <init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$1;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "textView"
    .parameter "id"
    .parameter "keyEvent"

    .prologue
    .line 72
    const v0, 0x7f070005

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$1;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-virtual {v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->attemptLogin()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
