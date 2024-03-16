public class Time {
    private int hour, minute;
    public int getHour() {
        return this.hour;
    }
    public int getMinute() {
        return this.minute;
    }
    public void setHour(int hour) {
        if (0 <= hour && hour <= 23) {
            this.hour = hour;
        }
    }
    public void setMinute(int minute) {
        if (0 <= minute && minute <= 59) {
            this.minute = minute;
        }
    }

    public boolean anterior(int h, int m) {
        return h < this.hour || (h == this.hour && m < this.minute);
    }
    public boolean posterior(int h, int m) {
        return h > this.hour || (h == this.hour && m > this.minute);
    }
    public boolean equals(int h, int m) {
        return h == this.hour && m == this.minute;
    }
    public String toString() {
        return this.hour + ":" + this.minute;
    }
}
