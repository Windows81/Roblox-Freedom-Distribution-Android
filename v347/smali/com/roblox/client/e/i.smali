.class public Lcom/roblox/client/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/roblox/client/e/i;->a:J

    .line 13
    iput-wide p3, p0, Lcom/roblox/client/e/i;->b:J

    .line 14
    iput-boolean p5, p0, Lcom/roblox/client/e/i;->c:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/roblox/client/e/i;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/roblox/client/e/i;->b:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/roblox/client/e/i;->c:Z

    return v0
.end method
