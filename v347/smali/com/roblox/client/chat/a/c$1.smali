.class Lcom/roblox/client/chat/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/chat/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/roblox/client/chat/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/a/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/a/c;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/roblox/client/chat/a/c$1;->a:Lcom/roblox/client/chat/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/chat/a/h;Lcom/roblox/client/chat/a/h;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->c()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/h;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 30
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 33
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 34
    const/4 v0, -0x1

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/roblox/client/chat/a/h;

    check-cast p2, Lcom/roblox/client/chat/a/h;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/c$1;->a(Lcom/roblox/client/chat/a/h;Lcom/roblox/client/chat/a/h;)I

    move-result v0

    return v0
.end method
