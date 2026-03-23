.class public Lcom/roblox/client/ReclickableTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/components/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setCurrentTab(I)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/roblox/client/ReclickableTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/roblox/client/ReclickableTabHost;->a:Lcom/roblox/client/components/j;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/roblox/client/ReclickableTabHost;->a:Lcom/roblox/client/components/j;

    invoke-virtual {p0}, Lcom/roblox/client/ReclickableTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/components/j;->a(Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setOnTabReselectedListener(Lcom/roblox/client/components/j;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/roblox/client/ReclickableTabHost;->a:Lcom/roblox/client/components/j;

    .line 37
    return-void
.end method
