.class Lcom/roblox/client/game/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/b$g;

.field final synthetic b:Lcom/roblox/client/game/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/b;Lcom/roblox/client/game/b$g;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/roblox/client/game/b$2;->b:Lcom/roblox/client/game/b;

    iput-object p2, p0, Lcom/roblox/client/game/b$2;->a:Lcom/roblox/client/game/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/roblox/client/game/b$2;->b:Lcom/roblox/client/game/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b;Z)Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/b$2;->a:Lcom/roblox/client/game/b$g;

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0, p1}, Lcom/roblox/client/game/b$g;->a(I)V

    :cond_1
    return-void
.end method
