.class Lcom/roblox/client/friends/c/e$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/e$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/c/e$2$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/e$2$1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/roblox/client/friends/c/e$2$1$1;->a:Lcom/roblox/client/friends/c/e$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$2$1$1;->a:Lcom/roblox/client/friends/c/e$2$1;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$2;->a:Lcom/roblox/client/friends/c/e$a;

    iget-object v1, p0, Lcom/roblox/client/friends/c/e$2$1$1;->a:Lcom/roblox/client/friends/c/e$2$1;

    iget-object v1, v1, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v1, v1, Lcom/roblox/client/friends/c/e$2;->b:Lcom/roblox/client/friends/c/c;

    invoke-interface {v0, v1}, Lcom/roblox/client/friends/c/e$a;->a(Lcom/roblox/client/friends/c/c;)V

    return-void
.end method
