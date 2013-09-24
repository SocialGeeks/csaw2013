.class Lops/black/herpderper/SuperSecretAuthorizationActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperSecretAuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lops/black/herpderper/SuperSecretAuthorizationActivity;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    iput-boolean p2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 231
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    #getter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;
    invoke-static {v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$100(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;->val$show:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
