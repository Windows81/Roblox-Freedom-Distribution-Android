.class public Lcom/roblox/client/game/b$f;
.super Lcom/roblox/client/components/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/roblox/client/game/b$g;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/game/b$g;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/roblox/client/components/b;-><init>(Ljava/lang/String;)V

    .line 421
    iput-object p2, p0, Lcom/roblox/client/game/b$f;->a:Lcom/roblox/client/game/b$g;

    .line 427
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 428
    new-instance p1, Lcom/roblox/client/game/b$f$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/game/b$f$1;-><init>(Lcom/roblox/client/game/b$f;)V

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$f;->a(Lcom/roblox/client/components/b$a;)V

    .line 442
    :cond_0
    new-instance p1, Lcom/roblox/client/game/b$f$2;

    invoke-direct {p1, p0}, Lcom/roblox/client/game/b$f$2;-><init>(Lcom/roblox/client/game/b$f;)V

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$f;->a(Lcom/roblox/client/components/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/b$f;I)I
    .locals 0

    .line 414
    iput p1, p0, Lcom/roblox/client/game/b$f;->b:I

    return p1
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/roblox/client/game/b$f;->a:Lcom/roblox/client/game/b$g;

    iget v1, p0, Lcom/roblox/client/game/b$f;->b:I

    invoke-interface {v0, v1}, Lcom/roblox/client/game/b$g;->a(I)V

    return-void
.end method
