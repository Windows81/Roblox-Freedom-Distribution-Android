.class public Lcom/roblox/client/friends/b/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/friends/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/b/a;)Lcom/roblox/client/friends/b/a$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/friends/b/a;->a:Lcom/roblox/client/friends/b/a$a;

    return-object v0
.end method

.method public static a()Lcom/roblox/client/friends/b/a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/roblox/client/friends/b/a;

    invoke-direct {v0}, Lcom/roblox/client/friends/b/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 61
    instance-of v0, p1, Lcom/roblox/client/friends/b/a$a;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/roblox/client/friends/b/a$a;

    iput-object p1, p0, Lcom/roblox/client/friends/b/a;->a:Lcom/roblox/client/friends/b/a$a;

    .line 67
    return-void

    .line 64
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f0a006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/b/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/friends/b/a$1;-><init>(Lcom/roblox/client/friends/b/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/friends/b/a;->a:Lcom/roblox/client/friends/b/a$a;

    .line 73
    return-void
.end method
