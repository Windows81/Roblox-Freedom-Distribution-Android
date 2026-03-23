.class public Lcom/roblox/client/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/roblox/client/o/d;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/roblox/client/o/d;->d:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/roblox/client/o/d;->b:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/roblox/client/o/d;->c:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/o/d;->e:Z

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/roblox/client/o/d;->d:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/roblox/client/o/d;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "TCP Response for Address:Port -> %s:%s\nSuccessful: %s\nResponse Code: %s\nResponse Message: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/roblox/client/o/d;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/roblox/client/o/d;->c:I

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/roblox/client/o/d;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/roblox/client/o/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/roblox/client/o/d;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
