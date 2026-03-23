.class Lcom/roblox/client/purchase/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/h$b;

.field final synthetic b:Lcom/roblox/client/purchase/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/h;Lcom/roblox/client/purchase/h$b;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    iput-object p2, p0, Lcom/roblox/client/purchase/h$1;->a:Lcom/roblox/client/purchase/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify Purchase callback. response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " responseBody = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.purchaseflow"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x190

    if-eq p1, v0, :cond_1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown"

    .line 69
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object p1, Lcom/roblox/client/purchase/h$a;->e:Lcom/roblox/client/purchase/h$a;

    .line 71
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    invoke-static {v0}, Lcom/roblox/client/purchase/h;->a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->u()V

    goto :goto_0

    :cond_0
    const-string p1, "Unauthorized to make request."

    .line 59
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p1, Lcom/roblox/client/purchase/h$a;->c:Lcom/roblox/client/purchase/h$a;

    .line 61
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    invoke-static {v0}, Lcom/roblox/client/purchase/h;->a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->s()V

    goto :goto_0

    :cond_1
    const-string p1, "Service was unable to validate receiptId."

    .line 54
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object p1, Lcom/roblox/client/purchase/h$a;->b:Lcom/roblox/client/purchase/h$a;

    .line 56
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    invoke-static {v0}, Lcom/roblox/client/purchase/h;->a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->r()V

    goto :goto_0

    :cond_2
    const-string p1, "Server error"

    .line 64
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object p1, Lcom/roblox/client/purchase/h$a;->e:Lcom/roblox/client/purchase/h$a;

    .line 66
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    invoke-static {v0}, Lcom/roblox/client/purchase/h;->a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->t()V

    goto :goto_0

    :cond_3
    const-string p1, "Verification success"

    .line 49
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object p1, Lcom/roblox/client/purchase/h$a;->a:Lcom/roblox/client/purchase/h$a;

    .line 51
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->b:Lcom/roblox/client/purchase/h;

    invoke-static {v0}, Lcom/roblox/client/purchase/h;->a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->q()V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/purchase/h$1;->a:Lcom/roblox/client/purchase/h$b;

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {v0, p1}, Lcom/roblox/client/purchase/h$b;->a(Lcom/roblox/client/purchase/h$a;)V

    :cond_4
    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    return-void
.end method
