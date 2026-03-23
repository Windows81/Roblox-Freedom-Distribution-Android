.class public Lcom/roblox/client/chat/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/o$a;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Lcom/roblox/client/h/o$a;


# direct methods
.method public constructor <init>(ILcom/roblox/client/h/o$a;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/chat/k;->b:Z

    .line 25
    iput p1, p0, Lcom/roblox/client/chat/k;->c:I

    .line 26
    iput-object p2, p0, Lcom/roblox/client/chat/k;->d:Lcom/roblox/client/h/o$a;

    .line 27
    return-void
.end method

.method private b(I)V
    .locals 7

    .prologue
    .line 44
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    .line 47
    iget v0, p0, Lcom/roblox/client/chat/k;->c:I

    mul-int v5, p1, v0

    .line 48
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FriendDownloader.download() p:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " i:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Lcom/roblox/client/h/o;

    iget v4, p0, Lcom/roblox/client/chat/k;->c:I

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/o;-><init>(JIILcom/roblox/client/h/o$a;)V

    .line 52
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 39
    iput p1, p0, Lcom/roblox/client/chat/k;->a:I

    .line 40
    iget v0, p0, Lcom/roblox/client/chat/k;->a:I

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/k;->b(I)V

    .line 41
    return-void
.end method

.method public a(ZLcom/roblox/client/e/l;)V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/roblox/client/chat/k;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/roblox/client/e/l;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/roblox/client/chat/k;->d:Lcom/roblox/client/h/o$a;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/roblox/client/chat/k;->d:Lcom/roblox/client/h/o$a;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/h/o$a;->a(ZLcom/roblox/client/e/l;)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/roblox/client/chat/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/k;->a:I

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/k;->b(I)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/chat/k;->b:Z

    goto :goto_0
.end method
