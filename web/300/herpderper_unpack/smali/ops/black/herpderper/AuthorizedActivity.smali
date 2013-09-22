.class public Lops/black/herpderper/AuthorizedActivity;
.super Landroid/app/Activity;
.source "AuthorizedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lops/black/herpderper/AuthorizedActivity;->setContentView(I)V

    .line 14
    return-void
.end method
