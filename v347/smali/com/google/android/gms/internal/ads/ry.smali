.class final synthetic Lcom/google/android/gms/internal/ads/ry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/rr;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/agv;

.field private final g:Lcom/google/android/gms/internal/ads/zzang;

.field private final h:Lcom/google/android/gms/internal/ads/asb;

.field private final i:Lcom/google/android/gms/ads/internal/ap;

.field private final j:Lcom/google/android/gms/ads/internal/bt;

.field private final k:Lcom/google/android/gms/internal/ads/ami;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rr;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/ads/internal/ap;Lcom/google/android/gms/ads/internal/bt;Lcom/google/android/gms/internal/ads/ami;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ry;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ry;->b:Lcom/google/android/gms/internal/ads/rr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ry;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ry;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/ry;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ry;->f:Lcom/google/android/gms/internal/ads/agv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ry;->g:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ry;->h:Lcom/google/android/gms/internal/ads/asb;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/ry;->i:Lcom/google/android/gms/ads/internal/ap;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/ry;->j:Lcom/google/android/gms/ads/internal/bt;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/ry;->k:Lcom/google/android/gms/internal/ads/ami;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ry;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ry;->b:Lcom/google/android/gms/internal/ads/rr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ry;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ry;->d:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/ry;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ry;->f:Lcom/google/android/gms/internal/ads/agv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ry;->g:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ry;->h:Lcom/google/android/gms/internal/ads/asb;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/ry;->i:Lcom/google/android/gms/ads/internal/ap;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ry;->j:Lcom/google/android/gms/ads/internal/bt;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/ry;->k:Lcom/google/android/gms/internal/ads/ami;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/rz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rr;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/ads/internal/ap;Lcom/google/android/gms/ads/internal/bt;Lcom/google/android/gms/internal/ads/ami;)Lcom/google/android/gms/internal/ads/rz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/qp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/qp;-><init>(Lcom/google/android/gms/internal/ads/qd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    invoke-direct {v2, v1, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/qd;Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/pv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/pv;-><init>(Lcom/google/android/gms/internal/ads/qd;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rz;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/sg;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/sl;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/sk;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/si;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/rz;->a(Lcom/google/android/gms/internal/ads/rs;)V

    return-object v1
.end method
