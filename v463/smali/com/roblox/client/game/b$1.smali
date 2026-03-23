.class Lcom/roblox/client/game/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/b;->a(Landroid/content/Context;Lcom/roblox/client/game/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/client/game/b$g;

.field final synthetic c:Lcom/roblox/client/game/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/b;Landroid/content/Context;Lcom/roblox/client/game/b$g;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/roblox/client/game/b$1;->c:Lcom/roblox/client/game/b;

    iput-object p2, p0, Lcom/roblox/client/game/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/game/b$1;->b:Lcom/roblox/client/game/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/http/j;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/roblox/client/game/b$1;->c:Lcom/roblox/client/game/b;

    iget-object p2, p0, Lcom/roblox/client/game/b$1;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/roblox/client/game/b;->a(Landroid/content/Context;)V

    .line 119
    iget-object p1, p0, Lcom/roblox/client/game/b$1;->c:Lcom/roblox/client/game/b;

    new-instance p2, Lcom/roblox/client/game/b$1$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/game/b$1$1;-><init>(Lcom/roblox/client/game/b$1;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$g;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/game/b$1;->b:Lcom/roblox/client/game/b$g;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/roblox/client/game/b$g;->a(I)V

    :goto_0
    return-void
.end method
