.class Lcom/roblox/client/friends/c/g$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/g$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/c/g$5$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/g$5$1;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$5$1$1;->a:Lcom/roblox/client/friends/c/g$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1$1;->a:Lcom/roblox/client/friends/c/g$5$1;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->a:Lcom/roblox/client/friends/c/f;

    iget-object v1, p0, Lcom/roblox/client/friends/c/g$5$1$1;->a:Lcom/roblox/client/friends/c/g$5$1;

    iget-object v1, v1, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v1, v1, Lcom/roblox/client/friends/c/g$5;->b:Lcom/roblox/client/friends/c/c;

    invoke-interface {v0, v1}, Lcom/roblox/client/friends/c/f;->b(Lcom/roblox/client/friends/c/c;)V

    return-void
.end method
