.class public Lcom/roblox/client/startup/a;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/startup/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/startup/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/a;)Lcom/roblox/client/startup/a$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/startup/a;->a:Lcom/roblox/client/startup/a$a;

    return-object v0
.end method

.method public static a(I)Lcom/roblox/client/startup/a;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/roblox/client/startup/a;

    invoke-direct {v0}, Lcom/roblox/client/startup/a;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/a;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/roblox/client/startup/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroid/support/v7/app/b;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onAttach(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Lcom/roblox/client/startup/a$a;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/roblox/client/startup/a$a;

    iput-object p1, p0, Lcom/roblox/client/startup/a;->a:Lcom/roblox/client/startup/a$a;

    .line 49
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCancel(Landroid/content/DialogInterface;)V

    .line 83
    const-string v0, "FragmentRetry"

    const-string v1, "onCancel:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/roblox/client/startup/a;->a:Lcom/roblox/client/startup/a$a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/roblox/client/startup/a;->a:Lcom/roblox/client/startup/a$a;

    invoke-interface {v0}, Lcom/roblox/client/startup/a$a;->x()V

    .line 87
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 60
    const-string v0, "FragmentRetry"

    const-string v1, "onCreateDialog:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/roblox/client/startup/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    new-instance v1, Landroid/support/v7/app/b$a;

    invoke-virtual {p0}, Lcom/roblox/client/startup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0009

    .line 65
    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00e9

    new-instance v2, Lcom/roblox/client/startup/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/a$1;-><init>(Lcom/roblox/client/startup/a;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/g;->onDetach()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/startup/a;->a:Lcom/roblox/client/startup/a$a;

    .line 55
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onDismiss(Landroid/content/DialogInterface;)V

    .line 92
    const-string v0, "FragmentRetry"

    const-string v1, "onDismiss: Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
