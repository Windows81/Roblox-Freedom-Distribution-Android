.class public Lcom/roblox/client/landing/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/landing/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/roblox/client/landing/a;)Lcom/roblox/client/landing/c;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/roblox/client/landing/c;

    invoke-direct {v0}, Lcom/roblox/client/landing/c;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v2, "itemId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/roblox/client/landing/c;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/roblox/client/landing/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/landing/a;

    iput-object v0, p0, Lcom/roblox/client/landing/c;->a:Lcom/roblox/client/landing/a;

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    const v0, 0x7f0a0056

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/roblox/client/landing/c;->a:Lcom/roblox/client/landing/a;

    .line 53
    invoke-virtual {v2}, Lcom/roblox/client/landing/a;->a()I

    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    const v1, 0x7f080105

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/components/RbxTextView;

    iget-object v2, p0, Lcom/roblox/client/landing/c;->a:Lcom/roblox/client/landing/a;

    .line 56
    invoke-virtual {v2}, Lcom/roblox/client/landing/a;->c()I

    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxTextView;->setText(I)V

    .line 58
    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/components/RbxTextView;

    iget-object v2, p0, Lcom/roblox/client/landing/c;->a:Lcom/roblox/client/landing/a;

    .line 59
    invoke-virtual {v2}, Lcom/roblox/client/landing/a;->b()I

    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxTextView;->setText(I)V

    .line 61
    return-object v0
.end method
