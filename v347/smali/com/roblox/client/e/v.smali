.class public Lcom/roblox/client/e/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(ZJZ)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/roblox/client/e/v;->a:Z

    .line 12
    iput-wide p2, p0, Lcom/roblox/client/e/v;->b:J

    .line 13
    iput-boolean p4, p0, Lcom/roblox/client/e/v;->c:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/roblox/client/e/v;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/roblox/client/e/v;->c:Z

    return v0
.end method
