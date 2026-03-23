.class public Lcom/roblox/client/chat/a/k;
.super Lcom/roblox/client/chat/a/h;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 13
    invoke-direct {p0}, Lcom/roblox/client/chat/a/h;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/chat/a/k;->b:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/k;->c(J)V

    .line 19
    const-string v0, "Typing..."

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/k;->d(Ljava/lang/String;)V

    .line 21
    :cond_0
    const-string v0, "User"

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/k;->g(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/roblox/client/chat/a/k;->a(Z)V

    .line 24
    iput-boolean v2, p0, Lcom/roblox/client/chat/a/k;->a:Z

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/k;->a(J)V

    .line 26
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/k;->b(J)V

    .line 27
    return-void
.end method
