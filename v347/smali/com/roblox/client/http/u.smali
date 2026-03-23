.class public Lcom/roblox/client/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/http/u;->a:J

    .line 14
    iput-wide p1, p0, Lcom/roblox/client/http/u;->b:J

    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/u;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/http/u;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iput-wide p1, p0, Lcom/roblox/client/http/u;->a:J

    .line 36
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)Z
    .locals 5

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/roblox/client/http/u;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/roblox/client/http/u;->a:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/roblox/client/http/u;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
