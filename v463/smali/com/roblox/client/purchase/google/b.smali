.class public Lcom/roblox/client/purchase/google/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/google/b$a;
    }
.end annotation


# static fields
.field private static m:Lcom/roblox/client/purchase/google/b;


# instance fields
.field private a:Lcom/roblox/client/purchase/google/a/c;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/roblox/client/s/f;

.field private i:Z

.field private j:Lcom/roblox/client/purchase/google/b$a;

.field private k:Lcom/roblox/client/purchase/e;

.field private l:Lcom/roblox/client/http/f;

.field private n:Z

.field private o:Lcom/roblox/client/purchase/c$b;

.field private p:Lcom/roblox/client/purchase/google/a/e$c;

.field private q:Lcom/roblox/client/purchase/google/a/e$a;

.field private r:Lcom/roblox/client/purchase/google/a/e$e;

.field private s:Lcom/roblox/client/purchase/google/a/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/purchase/google/a/c;Lcom/roblox/client/http/f;Lcom/roblox/client/s/f;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    const-string v1, ""

    .line 71
    iput-object v1, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 81
    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->b:Lcom/roblox/client/purchase/google/b$a;

    iput-object v1, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/google/b$a;

    .line 84
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/http/f;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/b;->n:Z

    .line 260
    new-instance v0, Lcom/roblox/client/purchase/google/b$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$4;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->o:Lcom/roblox/client/purchase/c$b;

    .line 441
    new-instance v0, Lcom/roblox/client/purchase/google/b$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$6;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->p:Lcom/roblox/client/purchase/google/a/e$c;

    .line 600
    new-instance v0, Lcom/roblox/client/purchase/google/b$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$8;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->q:Lcom/roblox/client/purchase/google/a/e$a;

    .line 666
    new-instance v0, Lcom/roblox/client/purchase/google/b$9;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$9;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->r:Lcom/roblox/client/purchase/google/a/e$e;

    .line 695
    new-instance v0, Lcom/roblox/client/purchase/google/b$10;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$10;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->s:Lcom/roblox/client/purchase/google/a/e$e;

    .line 98
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->b()V

    .line 102
    iput-object p2, p0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/http/f;

    .line 103
    iput-object p3, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/c;)Lcom/roblox/client/purchase/google/a/c;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/google/b$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;
    .locals 3

    .line 138
    sget-object v0, Lcom/roblox/client/purchase/google/b;->m:Lcom/roblox/client/purchase/google/b;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/roblox/client/purchase/google/a/e;

    const/4 v1, 0x6

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gQsTOERl7cAXlms9RMRN+XhTyE9h1oX/Wubr0x6FthR6gqktjdHOJ7ge6RR5Tbdpnv9/uhBMjk2hZOG/UktG8gxHbC0FZYdgm2T56tZrkpmodVk3+jN4gPBDIDhSPoKPIbu0dCbiTNOudL68nJVj+jRZI3nk4UDATTktWL7mzHkkt2B9BvKoA7MLJdGVhOSQzMgcTycI14em75apxWliIUDPz11L2USvIddTT+oPvRqLGe+BmIIvS5rCqdEqpLN4G0Qn6ioCw5R6I+kBy0cDY1604Vs5/FEPI+fSk48Kme+peiX+hGVlPF6ZZ9jF6yT/vAjpvn/DEEwkMMa7JnmhwIDAQAB"

    invoke-direct {v0, p0, v2, v1}, Lcom/roblox/client/purchase/google/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    new-instance p0, Lcom/roblox/client/http/h;

    invoke-direct {p0}, Lcom/roblox/client/http/h;-><init>()V

    .line 144
    new-instance v1, Lcom/roblox/client/purchase/google/b;

    .line 145
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/roblox/client/purchase/google/b;-><init>(Lcom/roblox/client/purchase/google/a/c;Lcom/roblox/client/http/f;Lcom/roblox/client/s/f;)V

    sput-object v1, Lcom/roblox/client/purchase/google/b;->m:Lcom/roblox/client/purchase/google/b;

    .line 147
    :cond_0
    sget-object p0, Lcom/roblox/client/purchase/google/b;->m:Lcom/roblox/client/purchase/google/b;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/roblox/client/purchase/google/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/purchase/google/a/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 738
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/purchase/google/a/h;

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    if-eqz v0, :cond_0

    .line 750
    new-instance v1, Lcom/roblox/client/purchase/google/a;

    invoke-direct {v1, p1}, Lcom/roblox/client/purchase/google/a;-><init>(Lcom/roblox/client/purchase/google/a$a;)V

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/e;->a(Lcom/roblox/client/purchase/f;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 754
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {v0, p2}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    .line 758
    :cond_1
    sget-object p2, Lcom/roblox/client/purchase/google/a$a;->i:Lcom/roblox/client/purchase/google/a$a;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/purchase/google/b;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 3

    .line 589
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InApp"

    goto :goto_0

    :cond_0
    const-string v0, "InGame"

    :goto_0
    const-string v1, "Purchase"

    const-string v2, "PurchaseOK"

    invoke-static {v1, v0, v2}, Lcom/roblox/client/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rbx.purchaseflow"

    const-string v1, "Receipt Verification Successful"

    .line 590
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 594
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->u()V

    .line 595
    sget-object p2, Lcom/roblox/client/purchase/google/a$a;->m:Lcom/roblox/client/purchase/google/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IABConsume. Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
    .locals 4

    .line 513
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0}, Lcom/roblox/client/purchase/e;->c()V

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-direct {p0, p1, p3}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V

    return-void

    .line 528
    :cond_1
    invoke-static {}, Lcom/roblox/client/u;->ad()Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/roblox/client/purchase/h;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/http/f;

    invoke-direct {v1, v2}, Lcom/roblox/client/purchase/h;-><init>(Lcom/roblox/client/http/f;)V

    .line 531
    new-instance v2, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;

    invoke-direct {v2, p1, p2}, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;-><init>(Lcom/roblox/client/purchase/google/a/h;Z)V

    new-instance v3, Lcom/roblox/client/purchase/google/b$7;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b$7;-><init>(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/purchase/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/h$b;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;ZZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "rbx.purchaseflow"

    const-string v1, "Getting price."

    .line 305
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v0, :cond_0

    const-string v0, "android.test.purchased"

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Query_Sku_Details"

    .line 315
    invoke-static {v0}, Lcom/roblox/client/ae/u;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 317
    new-instance v2, Lcom/roblox/client/purchase/google/b$5;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/roblox/client/purchase/google/b$5;-><init>(Lcom/roblox/client/purchase/google/b;ZLjava/util/List;Landroid/os/HandlerThread;)V

    .line 365
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 367
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/ae/u;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ZZ)V
    .locals 5

    .line 766
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    instance-of v0, v0, Lcom/roblox/client/game/m;

    if-eqz v0, :cond_1

    .line 767
    iget-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    check-cast v0, Lcom/roblox/client/game/m;

    iget-wide v1, p0, Lcom/roblox/client/purchase/google/b;->g:J

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/roblox/client/game/m;->a(ZJLjava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore calling inGamePurchaseFinished: mPlayerPtr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/roblox/client/purchase/google/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.purchaseflow"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 776
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->i()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->j()V

    goto :goto_1

    .line 782
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->k()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/roblox/client/purchase/google/b;->n:Z

    return p0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/roblox/client/purchase/google/b;->n:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z
    .locals 14

    move-object v10, p0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "productId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isSubscriptionPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.purchaseflow"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    .line 178
    iput-object v3, v10, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    move-object/from16 v8, p6

    .line 179
    iput-object v8, v10, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    .line 182
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 186
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/roblox/client/purchase/google/b$3;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/purchase/google/b$3;-><init>(Lcom/roblox/client/purchase/google/b;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)V

    invoke-virtual {v11, v12, v13}, Lcom/roblox/client/j;->a(Landroid/content/Context;Lcom/b/a/a/a$a;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Z)V

    .line 110
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    new-instance v1, Lcom/roblox/client/purchase/google/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/purchase/google/b$1;-><init>(Lcom/roblox/client/purchase/google/b;)V

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/e$d;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->h()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .line 408
    invoke-static {}, Lcom/roblox/client/b;->Y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "rbx.purchaseflow"

    const-string v2, "Static Response Testing Flag is Enabled"

    .line 412
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v2, "It is dev build"

    .line 420
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.roblox.client.robux80"

    .line 424
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.roblox.client.robux90bc"

    .line 425
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.test.purchased"

    .line 426
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Wrong product for static response"

    .line 434
    invoke-static {v0, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_0
    const-string p0, "Right product for static response"

    .line 428
    invoke-static {v0, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z
    .locals 0

    .line 222
    iput-object p6, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    .line 223
    iput-wide p4, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 224
    iput-object p2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    .line 226
    iput-boolean p7, p0, Lcom/roblox/client/purchase/google/b;->i:Z

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isInApp = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "rbx.purchaseflow"

    invoke-static {p3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startPurchase: Send productId = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    new-instance p3, Lcom/roblox/client/purchase/d;

    iget-object p4, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    iget-object p5, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    const/4 p6, 0x0

    invoke-direct {p3, p4, p5, p6}, Lcom/roblox/client/purchase/d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, p3}, Lcom/roblox/client/s/f;->a(Lcom/roblox/client/purchase/d;)V

    .line 233
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    invoke-interface {p1}, Lcom/roblox/client/purchase/e;->a()V

    .line 235
    invoke-static {}, Lcom/roblox/client/b;->cf()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/roblox/client/purchase/google/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    sget-object p1, Lcom/roblox/client/purchase/google/a$a;->s:Lcom/roblox/client/purchase/google/a$a;

    const-string p2, "Subscription purchase not allowed"

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    return p3

    .line 240
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->at()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-direct {p0, p7}, Lcom/roblox/client/purchase/google/b;->a(Z)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->d()V

    :goto_0
    return p3
.end method

.method static synthetic c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method private c()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/google/b$a;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x10eb9fcd

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0xc89c985

    if-eq v0, v1, :cond_1

    const v1, -0xc894da4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.roblox.robloxmobile.robloxpremium2200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "com.roblox.robloxmobile.robloxpremium1000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "com.roblox.robloxmobile.robloxpremium450"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method static synthetic d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/e;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 250
    new-instance v0, Lcom/roblox/client/purchase/c;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/http/f;

    invoke-direct {v0, v1}, Lcom/roblox/client/purchase/c;-><init>(Lcom/roblox/client/http/f;)V

    .line 252
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Lcom/roblox/client/u;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->o:Lcom/roblox/client/purchase/c$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/roblox/client/purchase/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/c$b;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->o:Lcom/roblox/client/purchase/c$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/roblox/client/purchase/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/c$b;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 9

    .line 373
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/purchase/e;

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Lcom/roblox/client/purchase/e;->b()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    const-string v1, "PurchaseStarted."

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 383
    :try_start_0
    invoke-static {}, Lcom/roblox/client/b;->cf()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.test.purchased"

    if-eqz v1, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/roblox/client/purchase/google/b;->i:Z

    if-eqz v1, :cond_2

    .line 384
    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    :goto_0
    move-object v5, v2

    const/16 v6, 0x277a

    iget-object v7, p0, Lcom/roblox/client/purchase/google/b;->p:Lcom/roblox/client/purchase/google/a/e$c;

    iget-object v8, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/roblox/client/purchase/google/a/c;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    :goto_1
    move-object v0, v2

    const/16 v4, 0x277a

    iget-object v5, p0, Lcom/roblox/client/purchase/google/b;->p:Lcom/roblox/client/purchase/google/a/e$c;

    iget-object v6, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v0

    invoke-interface/range {v1 .. v6}, Lcom/roblox/client/purchase/google/a/c;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 396
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->t()V

    .line 397
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->j:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchPurchaseFlow. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic e(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->e()V

    return-void
.end method

.method private f()V
    .locals 4

    const-string v0, ""

    .line 626
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 627
    iput-object v1, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    .line 628
    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 629
    iput-wide v2, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 630
    iput-object v1, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    .line 631
    iput-object v1, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->m()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->n()V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/google/b$a;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 4

    const-string v0, "rbx.purchaseflow"

    const-string v1, "Do Google Purchase GrantPending"

    .line 652
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :try_start_0
    invoke-static {}, Lcom/roblox/client/b;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->s:Lcom/roblox/client/purchase/google/a/e$e;

    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/purchase/google/a/c;->a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->r:Lcom/roblox/client/purchase/google/a/e$e;

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/e$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 660
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->w()V

    .line 661
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->l:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrantPendingPurchases. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->l()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 798
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->b(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->o()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 804
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->d(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->p()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 810
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->c(ZZ)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 816
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->e(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->y()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 822
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->f(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->d()V

    return-void
.end method

.method static synthetic n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 828
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->g(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/e$a;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->q:Lcom/roblox/client/purchase/google/a/e$a;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 834
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->h(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 840
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->i(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 846
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->j(ZZ)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .line 852
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->k(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->q()V

    return-void
.end method

.method private s()V
    .locals 3

    .line 858
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->l(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->r()V

    return-void
.end method

.method private t()V
    .locals 2

    .line 864
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->b(Z)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->s()V

    return-void
.end method

.method private u()V
    .locals 2

    .line 870
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->c(Z)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->x()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 876
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->d(Z)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->f()V

    return-void
.end method

.method static synthetic w(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 882
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->e(Z)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 888
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->f(Z)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 894
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->g(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    .line 642
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->h()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/roblox/client/purchase/google/b;->n:Z

    :goto_0
    return-void
.end method

.method a()Z
    .locals 5

    .line 156
    iget-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/s/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/a/c;->a(IILandroid/content/Intent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 477
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->v()V

    .line 478
    sget-object p2, Lcom/roblox/client/purchase/google/a$a;->k:Lcom/roblox/client/purchase/google/a$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HandleActivityResult (User charged). Error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;)Z
    .locals 11

    const-string v0, "Purchase"

    const-string v1, "InGame"

    const-string v2, "Start"

    .line 161
    invoke-static {v0, v1, v2}, Lcom/roblox/client/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    .line 162
    invoke-direct/range {v3 .. v10}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/roblox/client/purchase/e;Z)Z
    .locals 11

    const-string v0, "Purchase"

    const-string v1, "InApp"

    const-string v2, "Start"

    .line 170
    invoke-static {v0, v1, v2}, Lcom/roblox/client/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    move/from16 v10, p5

    .line 171
    invoke-direct/range {v3 .. v10}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;Z)Z

    move-result v0

    return v0
.end method
