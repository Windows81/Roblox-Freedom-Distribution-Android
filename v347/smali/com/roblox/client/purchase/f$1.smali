.class Lcom/roblox/client/purchase/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/f$b;

.field final synthetic b:Lcom/roblox/client/purchase/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/f;Lcom/roblox/client/purchase/f$b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    iput-object p2, p0, Lcom/roblox/client/purchase/f$1;->a:Lcom/roblox/client/purchase/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "rbx.purchaseflow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify Purchase callback. response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseBody = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 69
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/roblox/client/purchase/f$a;->e:Lcom/roblox/client/purchase/f$a;

    .line 71
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    invoke-static {v1}, Lcom/roblox/client/purchase/f;->a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->s()V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->a:Lcom/roblox/client/purchase/f$b;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->a:Lcom/roblox/client/purchase/f$b;

    invoke-interface {v1, v0}, Lcom/roblox/client/purchase/f$b;->a(Lcom/roblox/client/purchase/f$a;)V

    .line 77
    :cond_0
    return-void

    .line 49
    :sswitch_0
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Verification success"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/roblox/client/purchase/f$a;->a:Lcom/roblox/client/purchase/f$a;

    .line 51
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    invoke-static {v1}, Lcom/roblox/client/purchase/f;->a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->o()V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Service was unable to validate receiptId."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/roblox/client/purchase/f$a;->b:Lcom/roblox/client/purchase/f$a;

    .line 56
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    invoke-static {v1}, Lcom/roblox/client/purchase/f;->a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->p()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Unauthorized to make request."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/roblox/client/purchase/f$a;->c:Lcom/roblox/client/purchase/f$a;

    .line 61
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    invoke-static {v1}, Lcom/roblox/client/purchase/f;->a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->q()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Server error"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/roblox/client/purchase/f$a;->e:Lcom/roblox/client/purchase/f$a;

    .line 66
    iget-object v1, p0, Lcom/roblox/client/purchase/f$1;->b:Lcom/roblox/client/purchase/f;

    invoke-static {v1}, Lcom/roblox/client/purchase/f;->a(Lcom/roblox/client/purchase/f;)Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->r()V

    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
