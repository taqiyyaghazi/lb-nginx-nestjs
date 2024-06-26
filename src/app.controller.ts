import { Controller, Get } from '@nestjs/common';

@Controller()
export class AppController {
  private instanceId: string;

  constructor() {
    this.instanceId = process.env.INSTANCE_ID || 'unknown';
  }

  @Get()
  getHello(): string {
    console.log(`Hello from server ${this.instanceId}`);
    // Menggunakan variabel lingkungan untuk identifikasi unik
    return `Hello from server ${this.instanceId}`;
  }
}
