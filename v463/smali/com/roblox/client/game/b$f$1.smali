.class Lcom/roblox/client/game/b$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/b$f;-><init>(Ljava/lang/String;Lcom/roblox/client/game/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/b$f;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/b$f;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/roblox/client/game/b$f$1;->a:Lcom/roblox/client/game/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 431
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/game/b$f$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/b$f$1$1;-><init>(Lcom/roblox/client/game/b$f$1;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$g;)V

    return-void
.end method
