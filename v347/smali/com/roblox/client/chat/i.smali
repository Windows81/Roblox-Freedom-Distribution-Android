.class public Lcom/roblox/client/chat/i;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Lcom/roblox/client/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/chat/i;->b:Lcom/roblox/client/j/c;

    .line 55
    iget-object v0, p0, Lcom/roblox/client/chat/i;->b:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 56
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    const v0, 0x7f0a0057

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 33
    const v0, 0x7f0801d9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/i;->a:Landroid/support/v7/widget/Toolbar;

    .line 34
    iget-object v0, p0, Lcom/roblox/client/chat/i;->a:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0e00fe

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 37
    const v0, 0x7f08003f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    const v0, 0x7f0e0153

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v3, v2, v9

    invoke-virtual {p0, v0, v2}, Lcom/roblox/client/chat/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 41
    new-instance v0, Lcom/roblox/client/util/a/d;

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v5, v4, v2

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 43
    new-array v1, v10, [Lcom/roblox/client/util/a/a;

    aput-object v0, v1, v9

    invoke-static {v6, v8, v1}, Lcom/roblox/client/util/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/util/a/a;)V

    .line 45
    iget-object v0, p0, Lcom/roblox/client/chat/i;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/chat/i;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/i;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 48
    iget-object v0, p0, Lcom/roblox/client/chat/i;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/chat/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 50
    return-object v7
.end method
