.class public final Lcom/google/android/gms/internal/ads/vj;
.super Lcom/google/android/gms/internal/ads/abd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd",
        "<",
        "Lcom/google/android/gms/internal/ads/vj;",
        "Lcom/google/android/gms/internal/ads/vj$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acw",
            "<",
            "Lcom/google/android/gms/internal/ads/vj;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdix:Lcom/google/android/gms/internal/ads/vj;


# instance fields
.field private zzdir:I

.field private zzdiv:Lcom/google/android/gms/internal/ads/vl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    const-class v0, Lcom/google/android/gms/internal/ads/vj;

    sget-object v1, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/vj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/abj;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abd;->a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vj;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/vj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/vl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdiv:Lcom/google/android/gms/internal/ads/vl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vl;->b()Lcom/google/android/gms/internal/ads/vl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdiv:Lcom/google/android/gms/internal/ads/vl;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/vk;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/vj$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vj$a;-><init>(Lcom/google/android/gms/internal/ads/vk;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdiv"

    aput-object v2, v0, v1

    const-string v1, "zzdir"

    aput-object v1, v0, v3

    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b"

    sget-object v2, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/ack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/vj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/abd$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/vj;->zzdix:Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/abd$b;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdir:I

    return v0
.end method
