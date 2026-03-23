.class public Lcom/roblox/client/l/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/roblox/client/l/i;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/roblox/client/l/i;->a:J

    .line 16
    iput-wide p3, p0, Lcom/roblox/client/l/i;->b:J

    return-void
.end method
