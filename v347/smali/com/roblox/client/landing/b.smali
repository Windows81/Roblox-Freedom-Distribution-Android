.class public Lcom/roblox/client/landing/b;
.super Lcom/roblox/client/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/landing/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/landing/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/landing/b;)Lcom/roblox/client/landing/b$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/b$a;

    return-object v0
.end method

.method public static a()Lcom/roblox/client/landing/b;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/roblox/client/landing/b;

    invoke-direct {v0}, Lcom/roblox/client/landing/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 37
    instance-of v0, p1, Lcom/roblox/client/landing/b$a;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/roblox/client/landing/b$a;

    iput-object p1, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/b$a;

    .line 42
    return-void

    .line 40
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 52
    const-string v0, "FragmentAbout"

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v0, 0x7f0a0054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 55
    const v0, 0x7f0800b9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 56
    const v0, 0x7f0800bc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0800bd

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0800ba

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    new-instance v5, Lcom/roblox/client/landing/b$1;

    invoke-direct {v5, p0}, Lcom/roblox/client/landing/b$1;-><init>(Lcom/roblox/client/landing/b;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/landing/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/roblox/client/util/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 69
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object v3
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/roblox/client/m;->onDetach()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/b$a;

    .line 48
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 78
    const-string v0, "about"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 79
    return-void
.end method
