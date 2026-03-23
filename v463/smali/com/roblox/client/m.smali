.class public Lcom/roblox/client/m;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/m$a;
    }
.end annotation


# instance fields
.field private as:Lcom/roblox/client/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/m;)Lcom/roblox/client/m$a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/roblox/client/m;->as:Lcom/roblox/client/m$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 30
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/roblox/client/m;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/roblox/client/o$j;->Application_Logout_Response_LogoutConfirmation:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Application_Logout_Action_Logout:I

    new-instance v1, Lcom/roblox/client/m$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/m$3;-><init>(Lcom/roblox/client/m;)V

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Controls_Action_Cancel:I

    new-instance v1, Lcom/roblox/client/m$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/m$2;-><init>(Lcom/roblox/client/m;)V

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/m$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/m$1;-><init>(Lcom/roblox/client/m;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/roblox/client/m$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/roblox/client/m;->as:Lcom/roblox/client/m$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 66
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    return-void
.end method

.method public onNavigatToFeatureEvent(Lcom/roblox/client/l/j;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/roblox/client/m;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/roblox/client/m;->c()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
