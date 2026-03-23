.class public Lcom/roblox/client/friends/a/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/friends/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/a/a;)Lcom/roblox/client/friends/a/a$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/friends/a/a;->a:Lcom/roblox/client/friends/a/a$a;

    return-object v0
.end method

.method public static a()Lcom/roblox/client/friends/a/a;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/roblox/client/friends/a/a;

    invoke-direct {v0}, Lcom/roblox/client/friends/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 75
    instance-of v0, p1, Lcom/roblox/client/friends/a/a$a;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/roblox/client/friends/a/a$a;

    iput-object p1, p0, Lcom/roblox/client/friends/a/a;->a:Lcom/roblox/client/friends/a/a$a;

    .line 81
    return-void

    .line 78
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
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    const v0, 0x7f0a005c

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 48
    const v0, 0x7f080062

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/roblox/client/components/RbxTextView;

    .line 49
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    const v0, 0x7f0e017c

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v3, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/friends/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 53
    new-instance v0, Lcom/roblox/client/util/a/e;

    .line 54
    invoke-static {}, Lcom/roblox/client/b;->bD()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/roblox/client/friends/a/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/e;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 59
    new-array v1, v10, [Lcom/roblox/client/util/a/a;

    aput-object v0, v1, v9

    invoke-static {v6, v8, v1}, Lcom/roblox/client/util/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/util/a/a;)V

    .line 61
    const v0, 0x7f080068

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/a/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/a/a$1;-><init>(Lcom/roblox/client/friends/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v7
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/friends/a/a;->a:Lcom/roblox/client/friends/a/a$a;

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 87
    const-string v0, "contactsPermission"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 88
    return-void
.end method
