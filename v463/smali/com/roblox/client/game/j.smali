.class public Lcom/roblox/client/game/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/roblox/client/game/j;->a:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/roblox/client/game/j;->b:J

    .line 6
    iput-wide v0, p0, Lcom/roblox/client/game/j;->c:J

    const-string v2, ""

    .line 7
    iput-object v2, p0, Lcom/roblox/client/game/j;->d:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/roblox/client/game/j;->e:Ljava/lang/String;

    .line 9
    iput-wide v0, p0, Lcom/roblox/client/game/j;->f:J

    .line 10
    iput-object v2, p0, Lcom/roblox/client/game/j;->g:Ljava/lang/String;

    return-void
.end method
