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
.field private static l:Lcom/roblox/client/purchase/google/b;


# instance fields
.field private a:Lcom/roblox/client/purchase/google/a/c;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/roblox/client/i/f;

.field private i:Lcom/roblox/client/purchase/google/b$a;

.field private j:Lcom/roblox/client/purchase/c;

.field private k:Lcom/roblox/client/http/f;

.field private m:Z

.field private n:Lcom/roblox/client/purchase/a$b;

.field private o:Lcom/roblox/client/purchase/google/a/e$c;

.field private p:Lcom/roblox/client/purchase/google/a/e$a;

.field private q:Lcom/roblox/client/purchase/google/a/e$e;

.field private r:Lcom/roblox/client/purchase/google/a/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/purchase/google/b;

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/purchase/google/a/c;Lcom/roblox/client/http/f;Lcom/roblox/client/i/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 74
    sget-object v0, Lcom/roblox/client/purchase/google/b$a;->b:Lcom/roblox/client/purchase/google/b$a;

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->i:Lcom/roblox/client/purchase/google/b$a;

    .line 77
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/http/f;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/b;->m:Z

    .line 243
    new-instance v0, Lcom/roblox/client/purchase/google/b$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$4;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->n:Lcom/roblox/client/purchase/a$b;

    .line 410
    new-instance v0, Lcom/roblox/client/purchase/google/b$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$6;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->o:Lcom/roblox/client/purchase/google/a/e$c;

    .line 543
    new-instance v0, Lcom/roblox/client/purchase/google/b$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$8;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->p:Lcom/roblox/client/purchase/google/a/e$a;

    .line 609
    new-instance v0, Lcom/roblox/client/purchase/google/b$9;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$9;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->q:Lcom/roblox/client/purchase/google/a/e$e;

    .line 638
    new-instance v0, Lcom/roblox/client/purchase/google/b$10;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/google/b$10;-><init>(Lcom/roblox/client/purchase/google/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->r:Lcom/roblox/client/purchase/google/a/e$e;

    .line 89
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    .line 90
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->b()V

    .line 93
    iput-object p2, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/http/f;

    .line 94
    iput-object p3, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/c;)Lcom/roblox/client/purchase/google/a/c;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->i:Lcom/roblox/client/purchase/google/b$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;
    .locals 4

    .prologue
    .line 129
    sget-object v0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/purchase/google/b;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gQsTOERl7cAXlms9RMRN+XhTyE9h1oX/Wubr0x6FthR6gqktjdHOJ7ge6RR5Tbdpnv9/uhBMjk2hZOG/UktG8gxHbC0FZYdgm2T56tZrkpmodVk3+jN4gPBDIDhSPoKPIbu0dCbiTNOudL68nJVj+jRZI3nk4UDATTktWL7mzHkkt2B9BvKoA7MLJdGVhOSQzMgcTycI14em75apxWliIUDPz11L2USvIddTT+oPvRqLGe+BmIIvS5rCqdEqpLN4G0Qn6ioCw5R6I+kBy0cDY1604Vs5/FEPI+fSk48Kme+peiX+hGVlPF6ZZ9jF6yT/vAjpvn/DEEwkMMa7JnmhwIDAQAB"

    .line 132
    new-instance v1, Lcom/roblox/client/purchase/google/a/e;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/purchase/google/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/roblox/client/http/h;

    invoke-direct {v0}, Lcom/roblox/client/http/h;-><init>()V

    .line 135
    new-instance v2, Lcom/roblox/client/purchase/google/b;

    .line 136
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/roblox/client/purchase/google/b;-><init>(Lcom/roblox/client/purchase/google/a/c;Lcom/roblox/client/http/f;Lcom/roblox/client/i/f;)V

    sput-object v2, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/purchase/google/b;

    .line 138
    :cond_0
    sget-object v0, Lcom/roblox/client/purchase/google/b;->l:Lcom/roblox/client/purchase/google/b;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/roblox/client/purchase/google/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/purchase/google/a/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 679
    const-string v0, ""

    .line 681
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/purchase/google/a/h;

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 686
    :cond_0
    return-object v1
.end method

.method private a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    new-instance v2, Lcom/roblox/client/purchase/google/a;

    invoke-direct {v2, p1}, Lcom/roblox/client/purchase/google/a;-><init>(Lcom/roblox/client/purchase/google/a$a;)V

    invoke-interface {v0, v2}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/d;)V

    .line 697
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {v0, p2}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 701
    :cond_1
    sget-object v0, Lcom/roblox/client/purchase/google/a$a;->h:Lcom/roblox/client/purchase/google/a$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(ZZ)V

    .line 702
    return-void

    :cond_2
    move v0, v1

    .line 701
    goto :goto_0
.end method

.method private a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 4

    .prologue
    .line 532
    const-string v0, "StoreManager"

    const-string v1, "PurchaseOK"

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Receipt Verification Successful"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->v()V

    .line 538
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->l:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IABConsume. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    invoke-interface {v0}, Lcom/roblox/client/purchase/c;->c()V

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-direct {p0, p1, p3}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V

    .line 528
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->verifyPurchaseReceiptUrlForGoogle()Ljava/lang/String;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/roblox/client/purchase/f;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/http/f;

    invoke-direct {v1, v2}, Lcom/roblox/client/purchase/f;-><init>(Lcom/roblox/client/http/f;)V

    .line 500
    new-instance v2, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;

    invoke-direct {v2, p1, p2}, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;-><init>(Lcom/roblox/client/purchase/google/a/h;Z)V

    new-instance v3, Lcom/roblox/client/purchase/google/b$7;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b$7;-><init>(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/purchase/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/f$b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;ZZ)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/purchase/google/b;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    .line 709
    iget-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/roblox/client/FragmentGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 716
    :goto_0
    if-eqz p1, :cond_1

    .line 717
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->j()V

    .line 725
    :goto_1
    return-void

    .line 712
    :cond_0
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore calling inGamePurchaseFinished: mPlayerPtr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/purchase/google/b;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mProductId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    :cond_1
    if-eqz p2, :cond_2

    .line 720
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->k()V

    goto :goto_1

    .line 723
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->l()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/b;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z
    .locals 2

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/roblox/client/purchase/google/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/google/b;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/roblox/client/purchase/google/b;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Z)V

    .line 101
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    new-instance v1, Lcom/roblox/client/purchase/google/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/purchase/google/b$1;-><init>(Lcom/roblox/client/purchase/google/b;)V

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/e$d;)V

    .line 126
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->i()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-static {}, Lcom/roblox/client/b;->az()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    const-string v1, "rbx.purchaseflow"

    const-string v2, "Static Response Testing Flag is Enabled"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "rbx.purchaseflow"

    const-string v2, "It is dev build"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v1, "com.roblox.client.robux80"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.roblox.client.robux90bc"

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.test.purchased"

    .line 395
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    :cond_2
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Right product for static response"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :cond_3
    const-string v1, "rbx.purchaseflow"

    const-string v2, "Wrong product for static response"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z
    .locals 14

    .prologue
    .line 166
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    .line 170
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 205
    :goto_0
    return v2

    .line 174
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bx()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v2, Lcom/roblox/client/purchase/google/b$3;

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/roblox/client/purchase/google/b$3;-><init>(Lcom/roblox/client/purchase/google/b;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)V

    invoke-virtual {v11, v12, v2}, Lcom/roblox/client/c;->a(Landroid/content/Context;Lcom/c/a/a/a$a;)V

    .line 205
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/roblox/client/purchase/google/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z

    goto :goto_1
.end method

.method static synthetic c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->i:Lcom/roblox/client/purchase/google/b$a;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z
    .locals 6

    .prologue
    .line 211
    iput-object p6, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    .line 212
    iput-wide p4, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 213
    iput-object p2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    .line 216
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPurchase: Send productId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    new-instance v1, Lcom/roblox/client/purchase/b;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/purchase/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Lcom/roblox/client/purchase/b;)V

    .line 221
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    invoke-interface {v0}, Lcom/roblox/client/purchase/c;->a()V

    .line 223
    invoke-static {}, Lcom/roblox/client/b;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->e()V

    .line 229
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->d()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 233
    new-instance v0, Lcom/roblox/client/purchase/a;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->k:Lcom/roblox/client/http/f;

    invoke-direct {v0, v1}, Lcom/roblox/client/purchase/a;-><init>(Lcom/roblox/client/http/f;)V

    .line 235
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->validatePurchaseGoogleUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->n:Lcom/roblox/client/purchase/a$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/roblox/client/purchase/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/a$b;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->validatePurchaseGoogleUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->n:Lcom/roblox/client/purchase/a$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/roblox/client/purchase/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/a$b;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Getting price."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    if-eqz v0, :cond_0

    const-string v0, "android.test.purchased"

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v0, "Query_Sku_Details"

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 296
    new-instance v2, Lcom/roblox/client/purchase/google/b$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/roblox/client/purchase/google/b$5;-><init>(Lcom/roblox/client/purchase/google/b;Ljava/util/List;Landroid/os/HandlerThread;)V

    .line 340
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 342
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic e(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 348
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->j:Lcom/roblox/client/purchase/c;

    invoke-interface {v0}, Lcom/roblox/client/purchase/c;->b()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    const-string v1, "PurchaseStarted."

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;)Z

    move-result v2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    if-eqz v2, :cond_1

    const-string v2, "android.test.purchased"

    :goto_0
    const/16 v3, 0x277a

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b;->o:Lcom/roblox/client/purchase/google/a/e$c;

    iget-object v5, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/purchase/google/a/c;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V

    .line 368
    :goto_1
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 365
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->u()V

    .line 366
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->i:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchPurchaseFlow. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->n()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    .line 570
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->b:Landroid/app/Activity;

    .line 571
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    .line 573
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    .line 574
    iput-object v2, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    .line 575
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->o()V

    return-void
.end method

.method static synthetic h(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->m()V

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->i:Lcom/roblox/client/purchase/google/b$a;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 595
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Do Google Purchase GrantPending"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    invoke-static {}, Lcom/roblox/client/b;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b;->r:Lcom/roblox/client/purchase/google/a/e$e;

    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/purchase/google/a/c;->a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V

    .line 606
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b;->q:Lcom/roblox/client/purchase/google/a/e$e;

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/c;->a(Lcom/roblox/client/purchase/google/a/e$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->x()V

    .line 604
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->k:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrantPendingPurchases. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->p()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 739
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->b(ZZ)V

    .line 742
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->q()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 745
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->d(ZZ)V

    .line 748
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 751
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->c(ZZ)V

    .line 754
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->z()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 757
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->e(ZZ)V

    .line 760
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->d()V

    return-void
.end method

.method static synthetic n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 763
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->f(ZZ)V

    .line 766
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/e$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->p:Lcom/roblox/client/purchase/google/a/e$a;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 769
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->g(ZZ)V

    .line 772
    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 775
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->h(ZZ)V

    .line 778
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->r()V

    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 781
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->i(ZZ)V

    .line 784
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->s()V

    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 787
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->j(ZZ)V

    .line 790
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->t()V

    return-void
.end method

.method static synthetic s(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 793
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->k(ZZ)V

    .line 796
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->l(ZZ)V

    .line 802
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 805
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Z)V

    .line 808
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->y()V

    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 811
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->c(Z)V

    .line 814
    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->g()V

    return-void
.end method

.method static synthetic w(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->d(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 823
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->e(Z)V

    .line 826
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 829
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->f(Z)V

    .line 832
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 835
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->g(Z)V

    .line 838
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 583
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b;->f:Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->i()V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/b;->m:Z

    goto :goto_0
.end method

.method a()Z
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/roblox/client/purchase/google/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->h:Lcom/roblox/client/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b;->a:Lcom/roblox/client/purchase/google/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/a/c;->a(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 450
    :goto_0
    return v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/b;->w()V

    .line 447
    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->j:Lcom/roblox/client/purchase/google/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleActivityResult (User charged). Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z
    .locals 2

    .prologue
    .line 152
    invoke-direct/range {p0 .. p6}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/roblox/client/purchase/c;)Z
    .locals 7

    .prologue
    .line 160
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z

    move-result v0

    return v0
.end method
