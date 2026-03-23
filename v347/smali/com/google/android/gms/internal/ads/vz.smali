.class public final Lcom/google/android/gms/internal/ads/vz;
.super Lcom/google/android/gms/internal/ads/abd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd",
        "<",
        "Lcom/google/android/gms/internal/ads/vz;",
        "Lcom/google/android/gms/internal/ads/vz$a;",
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
            "Lcom/google/android/gms/internal/ads/vz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjo:Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field private zzdjl:Lcom/google/android/gms/internal/ads/wf;

.field private zzdjm:Lcom/google/android/gms/internal/ads/vv;

.field private zzdjn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    const-class v0, Lcom/google/android/gms/internal/ads/vz;

    sget-object v1, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/vz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/vz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->zzdjl:Lcom/google/android/gms/internal/ads/wf;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wf;->d()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->zzdjl:Lcom/google/android/gms/internal/ads/wf;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/vz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vz;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/vz$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vz$a;-><init>(Lcom/google/android/gms/internal/ads/wa;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdjl"

    aput-object v2, v0, v1

    const-string v1, "zzdjm"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "zzdjn"

    aput-object v2, v0, v1

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    sget-object v2, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/vz;->a(Lcom/google/android/gms/internal/ads/ack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/vz;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/vz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/vz;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/abd$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/vz;->zzdjo:Lcom/google/android/gms/internal/ads/vz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/abd$b;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/vz;->zzakh:Lcom/google/android/gms/internal/ads/acw;

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

.method public final b()Lcom/google/android/gms/internal/ads/vv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->zzdjm:Lcom/google/android/gms/internal/ads/vv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vv;->b()Lcom/google/android/gms/internal/ads/vv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->zzdjm:Lcom/google/android/gms/internal/ads/vv;

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/vt;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vz;->zzdjn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vt;->a(I)Lcom/google/android/gms/internal/ads/vt;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/vt;->d:Lcom/google/android/gms/internal/ads/vt;

    :cond_0
    return-object v0
.end method
