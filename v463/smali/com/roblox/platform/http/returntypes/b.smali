.class public Lcom/roblox/platform/http/returntypes/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/roblox/platform/http/returntypes/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/roblox/platform/http/returntypes/b;->c:Lcom/roblox/platform/http/returntypes/a;

    return-void
.end method

.method public constructor <init>(Le/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/l<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "ApiResponse"

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Le/l;->a()I

    move-result v1

    iput v1, p0, Lcom/roblox/platform/http/returntypes/b;->a:I

    .line 34
    invoke-virtual {p1}, Le/l;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Le/l;->e()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    .line 36
    iput-object v2, p0, Lcom/roblox/platform/http/returntypes/b;->c:Lcom/roblox/platform/http/returntypes/a;

    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {p1}, Le/l;->f()Lc/ad;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {p1}, Le/l;->f()Lc/ad;

    move-result-object v1

    invoke-virtual {v1}, Lc/ad;->g()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v2

    :catch_1
    const-string v3, "error while parsing response"

    .line 44
    invoke-static {v0, v3}, Lcom/roblox/platform/e;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 48
    :cond_2
    invoke-virtual {p1}, Le/l;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_3
    new-instance p1, Lcom/roblox/platform/http/returntypes/a;

    invoke-direct {p1, v1}, Lcom/roblox/platform/http/returntypes/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/b;->c:Lcom/roblox/platform/http/returntypes/a;

    .line 51
    iput-object v2, p0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/roblox/platform/http/returntypes/b;->c:Lcom/roblox/platform/http/returntypes/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/roblox/platform/http/returntypes/b;->c:Lcom/roblox/platform/http/returntypes/a;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/roblox/platform/http/returntypes/a;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
