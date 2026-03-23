.class Lcom/roblox/client/game/b$f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/b$f$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/b$f$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/b$f$1;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/roblox/client/game/b$f$1$1;->a:Lcom/roblox/client/game/b$f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/roblox/client/game/b$f$1$1;->a:Lcom/roblox/client/game/b$f$1;

    iget-object v0, v0, Lcom/roblox/client/game/b$f$1;->a:Lcom/roblox/client/game/b$f;

    invoke-static {v0, p1}, Lcom/roblox/client/game/b$f;->a(Lcom/roblox/client/game/b$f;I)I

    .line 435
    iget-object p1, p0, Lcom/roblox/client/game/b$f$1$1;->a:Lcom/roblox/client/game/b$f$1;

    iget-object p1, p1, Lcom/roblox/client/game/b$f$1;->a:Lcom/roblox/client/game/b$f;

    const-string v0, "SettingsLoaded"

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/b$f;->a(Ljava/lang/String;)V

    return-void
.end method
