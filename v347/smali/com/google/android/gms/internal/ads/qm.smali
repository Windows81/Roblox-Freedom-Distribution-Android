.class final synthetic Lcom/google/android/gms/internal/ads/qm;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qm;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qm;->b:Lcom/google/android/gms/internal/ads/rr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qm;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/qm;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/qm;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qm;->f:Lcom/google/android/gms/internal/ads/agv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qm;->g:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/qm;->h:Lcom/google/android/gms/internal/ads/asb;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/qm;->i:Lcom/google/android/gms/ads/internal/ap;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/qm;->j:Lcom/google/android/gms/ads/internal/bt;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/qm;->k:Lcom/google/android/gms/internal/ads/ami;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qm;->b:Lcom/google/android/gms/internal/ads/rr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qm;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/qm;->d:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/qm;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qm;->f:Lcom/google/android/gms/internal/ads/agv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qm;->g:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/qm;->h:Lcom/google/android/gms/internal/ads/asb;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/qm;->i:Lcom/google/android/gms/ads/internal/ap;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/qm;->j:Lcom/google/android/gms/ads/internal/bt;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/qm;->k:Lcom/google/android/gms/internal/ads/ami;

    new-instance v11, Lcom/google/android/gms/internal/ads/qp;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rr;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/ads/internal/ap;Lcom/google/android/gms/ads/internal/bt;Lcom/google/android/gms/internal/ads/ami;)Lcom/google/android/gms/internal/ads/qq;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/qp;-><init>(Lcom/google/android/gms/internal/ads/qd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->g()Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0, v11, v4}, Lcom/google/android/gms/internal/ads/js;->a(Lcom/google/android/gms/internal/ads/qd;Z)Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/ads/qd;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/pv;

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/pv;-><init>(Lcom/google/android/gms/internal/ads/qd;)V

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/ads/qd;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v11
.end method
