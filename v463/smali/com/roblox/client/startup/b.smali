.class public Lcom/roblox/client/startup/b;
.super Landroidx/fragment/app/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/startup/b$a;
    }
.end annotation


# instance fields
.field private ag:Lcom/roblox/client/startup/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/b$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/startup/b;->ag:Lcom/roblox/client/startup/b$a;

    return-object p0
.end method

.method public static d(I)Lcom/roblox/client/startup/b;
    .locals 3

    .line 34
    new-instance v0, Lcom/roblox/client/startup/b;

    invoke-direct {v0}, Lcom/roblox/client/startup/b;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/b;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string p1, "FragmentRetry"

    const-string v0, "onCreateDialog:"

    .line 60
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/roblox/client/startup/b;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 64
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Lcom/roblox/client/startup/b;->r()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_ConnectionError:I

    .line 65
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->b(I)Landroidx/appcompat/app/b$a;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Controls_Action_Retry:I

    new-instance v1, Lcom/roblox/client/startup/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/b$1;-><init>(Lcom/roblox/client/startup/b;)V

    .line 67
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->a(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Lcom/roblox/client/startup/b$a;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/roblox/client/startup/b$a;

    iput-object p1, p0, Lcom/roblox/client/startup/b;->ag:Lcom/roblox/client/startup/b$a;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/roblox/client/startup/b;->c()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroidx/appcompat/app/b;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroidx/appcompat/app/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/b;->f()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/roblox/client/startup/b;->ag:Lcom/roblox/client/startup/b$a;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "FragmentRetry"

    const-string v0, "onCancel:"

    .line 83
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/roblox/client/startup/b;->ag:Lcom/roblox/client/startup/b$a;

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/roblox/client/startup/b$a;->z()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "FragmentRetry"

    const-string v0, "onDismiss: Do nothing."

    .line 92
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
