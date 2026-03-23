.class public Lcom/roblox/client/purchase/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/f$b;,
        Lcom/roblox/client/purchase/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/f;

.field private b:Lcom/roblox/client/i/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/http/f;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/purchase/f;->a:Lcom/roblox/client/http/f;

    .line 32
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/f;->b:Lcom/roblox/client/i/f;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/roblox/client/purchase/f;->b:Lcom/roblox/client/i/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/f$b;)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/roblox/client/purchase/f$1;

    invoke-direct {v0, p0, p3}, Lcom/roblox/client/purchase/f$1;-><init>(Lcom/roblox/client/purchase/f;Lcom/roblox/client/purchase/f$b;)V

    .line 84
    iget-object v1, p0, Lcom/roblox/client/purchase/f;->a:Lcom/roblox/client/http/f;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 87
    iget-object v0, p0, Lcom/roblox/client/purchase/f;->b:Lcom/roblox/client/i/f;

    invoke-virtual {v0}, Lcom/roblox/client/i/f;->n()V

    .line 88
    return-void
.end method
