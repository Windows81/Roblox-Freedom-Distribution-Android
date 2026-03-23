.class public Lcom/roblox/client/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/e/q;->c:J

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/e/q;->d:Z

    .line 15
    iput-object p1, p0, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/roblox/client/e/q;->d:Z

    .line 17
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/roblox/client/e/q;->c:J

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
