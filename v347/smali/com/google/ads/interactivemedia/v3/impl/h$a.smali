.class Lcom/google/ads/interactivemedia/v3/impl/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/h;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/h;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/impl/h$1;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 454
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 455
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 460
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 461
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V

    .line 437
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne p1, v0, :cond_2

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 439
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Ljava/util/Map;)V

    .line 441
    :cond_2
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    goto :goto_0

    .line 385
    :pswitch_1
    if-eqz p2, :cond_3

    .line 386
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/af;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/af;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/af;->b()V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/s;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/s;->c()V

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->c()V

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/s;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/s;->b()V

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->d()V

    goto :goto_0

    .line 409
    :pswitch_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->d(Lcom/google/ads/interactivemedia/v3/impl/h;)V

    .line 411
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->e(Lcom/google/ads/interactivemedia/v3/impl/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/w$c;->destroy:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    goto/16 :goto_0

    .line 417
    :pswitch_6
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->getClickThruUrl()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->f(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :pswitch_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/af;->c()V

    goto/16 :goto_0

    .line 428
    :pswitch_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/af;->d()V

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V

    .line 449
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Ljava/util/Map;)V

    .line 467
    return-void
.end method
