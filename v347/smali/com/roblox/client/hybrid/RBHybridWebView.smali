.class public Lcom/roblox/client/hybrid/RBHybridWebView;
.super Lcom/roblox/a/d;
.source "SourceFile"


# instance fields
.field private c:Landroid/support/v4/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/a/d;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/f;->a(Landroid/content/Context;)Landroid/support/v4/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/roblox/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/f;->a(Landroid/content/Context;)Landroid/support/v4/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/f;->a(Landroid/content/Context;)Landroid/support/v4/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/f;->a(Landroid/content/Context;)Landroid/support/v4/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->b:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/roblox/client/hybrid/a/j;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 51
    new-instance v0, Lcom/roblox/client/hybrid/a/c;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 52
    new-instance v0, Lcom/roblox/client/hybrid/a/a;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 53
    new-instance v0, Lcom/roblox/client/hybrid/a/d;

    iget-object v1, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    invoke-direct {v0, v1}, Lcom/roblox/client/hybrid/a/d;-><init>(Landroid/support/v4/a/f;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 54
    new-instance v0, Lcom/roblox/client/hybrid/a/b;

    iget-object v1, p0, Lcom/roblox/client/hybrid/RBHybridWebView;->c:Landroid/support/v4/a/f;

    invoke-direct {v0, v1}, Lcom/roblox/client/hybrid/a/b;-><init>(Landroid/support/v4/a/f;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 55
    new-instance v0, Lcom/roblox/client/hybrid/a/i;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 56
    new-instance v0, Lcom/roblox/client/hybrid/a/h;

    invoke-direct {v0, p1}, Lcom/roblox/client/hybrid/a/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 57
    new-instance v0, Lcom/roblox/client/hybrid/a/f;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 58
    new-instance v0, Lcom/roblox/client/hybrid/a/g;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 59
    new-instance v0, Lcom/roblox/client/hybrid/a/e;

    invoke-direct {v0}, Lcom/roblox/client/hybrid/a/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/c;)V

    .line 61
    :cond_0
    return-void
.end method
