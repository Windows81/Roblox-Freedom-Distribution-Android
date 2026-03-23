.class public Lcom/roblox/client/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/roblox/client/l/j;->c:Z

    .line 20
    iput-object p1, p0, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/l/j;
    .locals 1

    .line 59
    new-instance v0, Lcom/roblox/client/l/j;

    invoke-direct {v0, p0}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/roblox/client/l/j;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/profile/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->P()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/roblox/client/l/j;
    .locals 1

    .line 65
    new-instance v0, Lcom/roblox/client/l/j;

    invoke-direct {v0, p0}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 66
    iput-boolean p0, v0, Lcom/roblox/client/l/j;->c:Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/roblox/client/l/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/l/j;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/roblox/client/l/j;->f:Z

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/roblox/client/l/j;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/roblox/client/l/j;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/roblox/client/l/j;->f:Z

    return v0
.end method
