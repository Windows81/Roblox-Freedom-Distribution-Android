.class final synthetic Lcom/google/android/gms/internal/ads/ql;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/agv;

.field private final c:Lcom/google/android/gms/internal/ads/zzang;

.field private final d:Lcom/google/android/gms/ads/internal/bt;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ql;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ql;->b:Lcom/google/android/gms/internal/ads/agv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ql;->c:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ql;->d:Lcom/google/android/gms/ads/internal/bt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ql;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 12

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ql;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ql;->b:Lcom/google/android/gms/internal/ads/agv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ql;->c:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ql;->d:Lcom/google/android/gms/ads/internal/bt;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/ql;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->f()Lcom/google/android/gms/internal/ads/qk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/google/android/gms/internal/ads/ami;->a()Lcom/google/android/gms/internal/ads/ami;

    move-result-object v10

    move v4, v3

    move-object v8, v7

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rr;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/ads/internal/ap;Lcom/google/android/gms/ads/internal/bt;Lcom/google/android/gms/internal/ads/ami;)Lcom/google/android/gms/internal/ads/qd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nn;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qd;->v()Lcom/google/android/gms/internal/ads/rl;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/qn;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/qn;-><init>(Lcom/google/android/gms/internal/ads/nn;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/rl;->a(Lcom/google/android/gms/internal/ads/rm;)V

    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/qd;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
