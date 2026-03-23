.class public Lcom/roblox/client/chat/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/text/SimpleDateFormat;

.field private static d:Ljava/text/SimpleDateFormat;

.field private static e:Ljava/text/SimpleDateFormat;

.field private static f:Ljava/text/SimpleDateFormat;

.field private static g:Ljava/util/Date;


# instance fields
.field public a:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/roblox/client/chat/a/h;->b:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/chat/a/h;->c:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE | h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/chat/a/h;->d:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d | h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/chat/a/h;->e:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy | h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/chat/a/h;->f:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    .line 36
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AM"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PM"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/text/DateFormatSymbols;->setAmPmStrings([Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/roblox/client/chat/a/h;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 40
    sget-object v1, Lcom/roblox/client/chat/a/h;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 41
    sget-object v1, Lcom/roblox/client/chat/a/h;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 42
    sget-object v1, Lcom/roblox/client/chat/a/h;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 44
    sget-object v0, Lcom/roblox/client/chat/a/h;->b:Ljava/util/Set;

    const-string v1, "User"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    .line 89
    iput-wide p1, p0, Lcom/roblox/client/chat/a/h;->l:J

    .line 90
    iput-wide p1, p0, Lcom/roblox/client/chat/a/h;->m:J

    .line 91
    const-string v0, "User"

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->i:Ljava/lang/String;

    .line 92
    iput-wide p3, p0, Lcom/roblox/client/chat/a/h;->j:J

    .line 93
    invoke-virtual {p0, p5}, Lcom/roblox/client/chat/a/h;->d(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/roblox/client/chat/a/h;->p()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    .line 99
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->h:Ljava/lang/String;

    .line 100
    const-string v0, "senderType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->i:Ljava/lang/String;

    .line 101
    const-string v0, "senderTargetId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/a/h;->j:J

    .line 102
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->d(Ljava/lang/String;)V

    .line 103
    const-string v0, "read"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/h;->r:Z

    .line 105
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/h;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/a/h;->l:J

    .line 107
    iget-wide v0, p0, Lcom/roblox/client/chat/a/h;->l:J

    iput-wide v0, p0, Lcom/roblox/client/chat/a/h;->m:J

    .line 108
    invoke-direct {p0}, Lcom/roblox/client/chat/a/h;->p()V

    .line 110
    const-string v0, "filteredForReceivers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "filteredForReceivers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->a(Ljava/lang/Boolean;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/roblox/client/chat/a/h;->b:Ljava/util/Set;

    return-object v0
.end method

.method private i(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 116
    invoke-static {p1}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getGameLinkPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 120
    sget-object v0, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    iget-wide v2, p0, Lcom/roblox/client/chat/a/h;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 121
    sget-object v0, Lcom/roblox/client/chat/a/h;->c:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->n:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/roblox/client/chat/a/h;->d:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->o:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/roblox/client/chat/a/h;->e:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->p:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/roblox/client/chat/a/h;->f:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/roblox/client/chat/a/h;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/h;->q:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private q()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->q:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->p:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->o:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/roblox/client/chat/a/h;->l:J

    .line 148
    invoke-direct {p0}, Lcom/roblox/client/chat/a/h;->p()V

    .line 149
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/h;)V
    .locals 2

    .prologue
    .line 271
    if-ne p1, p0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->b(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->d(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->g(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/h;->c(J)V

    .line 279
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/h;->a(J)V

    .line 280
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/h;->b(J)V

    .line 281
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->a(Z)V

    .line 282
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->c(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->e(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/h;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->h(Ljava/lang/String;)V

    .line 285
    invoke-direct {p1}, Lcom/roblox/client/chat/a/h;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    .line 268
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->h:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/roblox/client/chat/a/h;->r:Z

    .line 225
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/roblox/client/chat/a/h;->l:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/roblox/client/chat/a/h;->m:J

    .line 157
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->s:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/roblox/client/chat/a/h;->m:J

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/roblox/client/chat/a/h;->j:J

    .line 165
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->t:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/roblox/client/chat/a/h;->j:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->k:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/roblox/client/b;->br()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/h;->j(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/h;->w:Z

    .line 213
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->v:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    const-string v0, "\\S"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/h;->e(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->i:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public h()I
    .locals 2

    .prologue
    .line 188
    const-string v0, "Moderated"

    invoke-virtual {p0}, Lcom/roblox/client/chat/a/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const v0, 0x7f0e0154

    .line 191
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0e0155

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/roblox/client/chat/a/h;->u:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/h;->w:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/h;->r:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/a/h;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
