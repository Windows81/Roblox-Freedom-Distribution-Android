.class Lcom/roblox/client/game/f$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/f$b;->a(Lcom/roblox/client/purchase/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/f;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/roblox/client/game/f$b;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/f$b;Lcom/roblox/client/purchase/f;Ljava/lang/CharSequence;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/roblox/client/game/f$b$1;->c:Lcom/roblox/client/game/f$b;

    iput-object p2, p0, Lcom/roblox/client/game/f$b$1;->a:Lcom/roblox/client/purchase/f;

    iput-object p3, p0, Lcom/roblox/client/game/f$b$1;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/roblox/client/game/f$b$1;->a:Lcom/roblox/client/purchase/f;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/roblox/client/game/f$b$1;->c:Lcom/roblox/client/game/f$b;

    iget-object v0, v0, Lcom/roblox/client/game/f$b;->a:Lcom/roblox/client/game/f;

    iget-object v1, p0, Lcom/roblox/client/game/f$b$1;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/f;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/f$b$1;->c:Lcom/roblox/client/game/f$b;

    iget-object v0, v0, Lcom/roblox/client/game/f$b;->a:Lcom/roblox/client/game/f;

    invoke-virtual {v0}, Lcom/roblox/client/game/f;->a()Lcom/roblox/client/game/ActivityGame;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/f$b$1;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/ActivityGame;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
