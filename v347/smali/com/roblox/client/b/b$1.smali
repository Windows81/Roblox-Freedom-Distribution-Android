.class Lcom/roblox/client/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/b/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/b/b;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/roblox/client/b/b$1;->a:Lcom/roblox/client/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    .line 191
    const-string v0, "EventStreamManager"

    const-string v1, "addEvent: Failed to post events. Ignore and do nothing"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "RbxAnalytics"

    const-string v1, "PostInBatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "RbxAnalytics"

    const-string v1, "PostInBatch"

    const-string v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
