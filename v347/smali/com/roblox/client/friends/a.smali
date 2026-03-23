.class public Lcom/roblox/client/friends/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/roblox/client/friends/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/a;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/roblox/client/friends/a;->b:I

    return v0
.end method

.method public static a(II)Lcom/roblox/client/friends/a;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/roblox/client/friends/a;

    invoke-direct {v0}, Lcom/roblox/client/friends/a;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "text_param"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "request_code_param"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/a;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/friends/a;)Lcom/roblox/client/friends/a$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/friends/a;->c:Lcom/roblox/client/friends/a$a;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 78
    instance-of v0, p1, Lcom/roblox/client/friends/a$a;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/roblox/client/friends/a$a;

    iput-object p1, p0, Lcom/roblox/client/friends/a;->c:Lcom/roblox/client/friends/a$a;

    .line 84
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/roblox/client/friends/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/friends/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "text_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/friends/a;->a:I

    .line 54
    invoke-virtual {p0}, Lcom/roblox/client/friends/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_code_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/friends/a;->b:I

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 62
    const v0, 0x7f0a0055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    const v0, 0x7f08002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget v2, p0, Lcom/roblox/client/friends/a;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const v0, 0x7f08002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/friends/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/friends/a$1;-><init>(Lcom/roblox/client/friends/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/friends/a;->c:Lcom/roblox/client/friends/a$a;

    .line 90
    return-void
.end method
