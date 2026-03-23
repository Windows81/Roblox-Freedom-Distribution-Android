.class Lcom/roblox/client/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/r/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/roblox/client/e$1;->a:Lcom/roblox/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/r/d$b;)V
    .locals 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAssetRetrieved() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.catalog"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/roblox/client/e$1;->a:Lcom/roblox/client/e;

    invoke-static {p1, p2}, Lcom/roblox/client/e;->a(Lcom/roblox/client/e;Lcom/roblox/client/r/d$b;)Lcom/roblox/client/r/d$b;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/roblox/client/e$1;->a:Lcom/roblox/client/e;

    invoke-virtual {p1}, Lcom/roblox/client/r/d$b;->a()J

    move-result-wide v1

    .line 48
    invoke-virtual {p1}, Lcom/roblox/client/r/d$b;->b()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/roblox/client/r/d$b;->c()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {p1}, Lcom/roblox/client/r/d$b;->d()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/e;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
